cask "mambaforge-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "23.3.1-0"
  sha256 arm:   "71e7ea4295d22f0c7ab08b334c07d9540e10775c8abd456314e186625cfb3bf1",
         intel: "b7b5fe0690528a4d449597e49edb2595625f2cf29e0473fd2a8d2dabc4d948f5"

  url "https://mirrors.tuna.tsinghua.edu.cn/github-release/conda-forge/miniforge/LatestRelease/Mambaforge-#{version}-MacOSX-#{arch}.sh",
      verified: "mirrors.tuna.tsinghua.edu.cn/github-release/conda-forge/miniforge/"
  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :url
    regex(/v?(\d+(?:[._-]\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "mambaforge",
    "miniconda",
    "miniforge",
    "miniforge-cn",
  ]
  container type: :naked

  installer script: {
    executable: "Mambaforge-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }

  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.condarc",
    "~/.conda",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
