cask "mambaforge-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "4.13.0-1"

  on_intel do
    sha256 "bc42d606b67ace370847deb849e7d1ea2879b0be78bb1be51b020c3cb4e5bef2"
  end
  on_arm do
    sha256 "6263560d2b0902942841667721dad3621c05f704f6b080d968ad355aeca51486"
  end

  url "https://mirrors.tuna.tsinghua.edu.cn/github-release/conda-forge/miniforge/Miniforge3-#{version}/Mambaforge-#{version}-MacOSX-#{arch}.sh"
  name "mambaforge"
  desc "Minimal installer for conda with preinstalled support for Mamba"
  homepage "https://github.com/conda-forge/miniforge"

  livecheck do
    url :homepage
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:[._-]\d+)+)["' >]}i)
  end

  auto_updates true
  conflicts_with cask: [
    "miniconda",
    "miniforge",
  ]
  container type: :naked

  installer script: {
    executable: "Mambaforge-#{version}-MacOSX-#{arch}.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  # binary "#{caskroom_path}/base/condabin/conda"

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
