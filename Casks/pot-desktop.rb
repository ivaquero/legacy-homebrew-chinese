cask "pot-desktop" do
    arch arm: "aarch64", intel: "x64"

    version "0.3.2"
    sha256 arm:   "3e8e725d58ed1a3876ee20c943ff0cd49e1a38ee60a344127fae8e92220d71fa",
           intel: "3a84f6280fda24de1f2dea798fcad4062b1e32ef5161ace5fcaca4d20b03f9ee"

    url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
    name "pot"
    desc "A cross-platform translation software"
    homepage "https://github.com/pot-app/pot-desktop"

    livecheck do
      url :url
      strategy :github_latest
    end

    app "pot.app"

    zap trash: [
      "~/Library/Application Support/cn.pylogmon.pot/config.toml",
      "~/Library/Caches/cn.pylogmon.pot",
      "~/Library/Saved Application State/cn.pylogmon.pot.savedState",
    ]
  end
