# frozen_string_literal: true

require "formula"
require "livecheck/livecheck"

module Homebrew
  extend T::Sig

  module_function

  sig { returns(CLI::Parser) }
  def livebump_args
    Homebrew::CLI::Parser.new do
      description <<~EOS
        Check for newer versions of formulae and/or casks from upstream and then
        create a pull request to update <formula> with a new URL or a new tag.
        If no formula or cask argument is passed, the list of formulae and
        casks to check is taken from `HOMEBREW_LIVECHECK_WATCHLIST` or
        `~/.brew_livecheck_watchlist`.
      EOS
      flag   "--tap=",
             description: "Check formulae/casks within the given tap, specified as <user>`/`<repo>."
      switch "--all",
             description: "Check all available formulae/casks."
      switch "--installed",
             description: "Check formulae/casks that are currently installed."
      switch "--formula", "--formulae",
             description: "Only check formulae."
      switch "--cask", "--casks",
             description: "Only check casks."
      conflicts "--tap=", "--all", "--installed"
      conflicts "--cask", "--formula"

      switch "-n", "--dry-run",
             description: "Print what would be done rather than doing it."
      switch "--write",
             description: "Make the expected file modifications without taking any Git actions."
      switch "--commit",
             depends_on:  "--write",
             description: "When passed with `--write`, generate a new commit after writing changes "\
                          "to the formula file."
      switch "--no-audit",
             description: "Don't run `brew audit` before opening the PR."
      switch "--strict",
             description: "Run `brew audit --strict` before opening the PR."
      switch "--online",
             description: "Run `brew audit --online` before opening the PR."
      switch "--no-browse",
             description: "Print the pull request URL instead of opening in a browser."
      switch "--no-fork",
             description: "Don't try to fork the repository."
      conflicts "--dry-run", "--write"
      conflicts "--no-audit", "--strict"
      conflicts "--no-audit", "--online"

      named_args [:formula, :cask]
    end
  end

  def livebump
    args = livebump_args.parse

    if args.debug? && args.verbose?
      puts args
      puts ENV["HOMEBREW_LIVECHECK_WATCHLIST"] if ENV["HOMEBREW_LIVECHECK_WATCHLIST"].present?
    end

    formulae_and_casks_to_check =
      if args.tap
        tap = Tap.fetch(args.tap)
        formulae = args.cask? ? [] : tap.formula_files.map { |path| Formulary.factory(path) }
        casks = args.formula? ? [] : tap.cask_files.map { |path| Cask::CaskLoader.load(path) }
        formulae + casks
      elsif args.installed?
        formulae = args.cask? ? [] : Formula.installed
        casks = args.formula? ? [] : Cask::Caskroom.casks
        formulae + casks
      elsif args.all?
        formulae = args.cask? ? [] : Formula.to_a
        casks = args.formula? ? [] : Cask::Cask.to_a
        formulae + casks
      elsif args.named.present?
        if args.formula?
          args.named.to_formulae
        elsif args.cask?
          args.named.to_casks
        else
          args.named.to_formulae_and_casks
        end
      elsif File.exist?(WATCHLIST_PATH)
        begin
          names = Pathname.new(WATCHLIST_PATH).read.lines
                          .reject { |line| line.start_with?("#") || line.blank? }
                          .map(&:strip)

          named_args = T.unsafe(CLI::NamedArgs).new(*names)
          named_args.to_formulae_and_casks.reject do |formula_or_cask|
            (args.formula? && !formula_or_cask.is_a?(Formula)) ||
              (args.cask? && !formula_or_cask.is_a?(Cask::Cask))
          end
        rescue Errno::ENOENT => e
          onoe e
        end
      else
        raise UsageError, "A watchlist file is required when no arguments are given."
      end&.sort_by do |formula_or_cask|
        formula_or_cask.respond_to?(:token) ? formula_or_cask.token : formula_or_cask.name
      end

    raise UsageError, "No formulae or casks to check." if formulae_and_casks_to_check.blank?

    options = {
      quiet:   args.quiet?,
      debug:   args.debug?,
      verbose: args.verbose?,
    }.compact

    run_checks(formulae_and_casks_to_check, **options)
  end

  # Executes the livecheck logic for each formula/cask in the
  # `formulae_and_casks_to_check` array.
  sig do
    params(
      formulae_and_casks: T::Enumerable[T.any(Formula, Cask::Cask)],
      debug:              T::Boolean,
      quiet:              T::Boolean,
      verbose:            T::Boolean,
    ).void
  end
  def run_checks(formulae_and_casks, debug: false, quiet: false, verbose: false)
    Livecheck.load_other_tap_strategies(formulae_and_casks)

    has_a_newer_upstream_version = T.let(false, T::Boolean)

    formulae_and_casks.map.with_index do |formula_or_cask, i|
      formula = formula_or_cask if formula_or_cask.is_a?(Formula)
      name = Livecheck.formula_or_cask_name(formula_or_cask)

      if debug && i.positive?
        puts <<~EOS
          ----------
        EOS
      end

      skip_info = Livecheck::SkipConditions.skip_information(formula_or_cask, verbose: verbose)
      if skip_info.present?
        Livecheck::SkipConditions.print_skip_information(skip_info) unless quiet
        next
      end

      formula&.head&.downloader&.shutup!

      # Use the `stable` version for comparison except for installed
      # head-only formulae. A formula with `stable` and `head` that's
      # installed using `--head` will still use the `stable` version for
      # comparison.
      current = if formula
        if formula.head_only?
          formula.any_installed_version.version.commit
        else
          formula.stable.version
        end
      else
        Version.new(formula_or_cask.version)
      end

      latest = if formula&.head_only?
        formula.head.downloader.fetch_last_commit
      else
        version_info = Livecheck.latest_version(formula_or_cask, verbose: verbose, debug: debug)
        version_info[:latest] if version_info.present?
      end

      if latest.blank?
        no_versions_msg = "Unable to get versions"
        raise Livecheck::Error, no_versions_msg
      end

      if (m = latest.to_s.match(/(.*)-release$/)) && !current.to_s.match(/.*-release$/)
        latest = Version.new(m[1])
      end

      is_outdated = if formula&.head_only?
        # A HEAD-only formula is considered outdated if the latest upstream
        # commit hash is different than the installed version's commit hash
        (current != latest)
      else
        (current < latest)
      end

      next unless is_outdated

      has_a_newer_upstream_version ||= true

      bump_pr(formula_or_cask, latest)
      nil
    rescue => e
      Homebrew.failed = true

      unless quiet
        onoe "#{Tty.blue}#{name}#{Tty.reset}: #{e}"
        $stderr.puts e.backtrace if debug && !e.is_a?(Livecheck::Error)
        nil
      end
    end

    puts "No newer upstream versions." if !has_a_newer_upstream_version && !debug
    nil
  end

  sig do
    params(
      formula_or_cask: T::Enumerable[T.any(Formula, Cask::Cask)],
      new_version:     Version,
    )
  end
  def bump_pr(formula_or_cask, new_version)
    args = livebump_args.parse

    bump_pr_args = case formula_or_cask
    when Formula
      ["bump-formula-pr"]
    when Cask::Cask
      ["bump-cask-pr"]
    else
      []
    end

    bump_pr_args << "--version=#{new_version}"
    bump_pr_args << "--dry-run" if args.dry_run?
    bump_pr_args << "--write" if args.write?
    bump_pr_args << "--commit" if args.commit?
    bump_pr_args << "--no-audit" if args.no_audit?
    bump_pr_args << "--strict" if args.strict? && formula_or_cask.is_a?(Formula)
    bump_pr_args << "--online" if args.online?
    bump_pr_args << "--no-browse" if args.no_browse?
    bump_pr_args << "--no-fork" if args.no_fork?
    bump_pr_args << "--debug" if args.debug?
    bump_pr_args << "--quiet" if args.quiet?
    bump_pr_args << "--verbose" if args.verbose?
    bump_pr_args << formula_or_cask.to_s
    system HOMEBREW_BREW_FILE, *bump_pr_args
  end
end
