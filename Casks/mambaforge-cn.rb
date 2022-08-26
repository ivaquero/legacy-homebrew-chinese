cask "mambaforge-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "4.14.0-0"

  on_intel do
    sha256 "949f046b4404cc8e081807b048050e6642d8db5520c20d5158a7ef721fbf76c5"
  end
  on_arm do
    sha256 "35d05a65e19b8e5d596964936ddd6023ae66d664a25ba291a52fec18f06a73b6"
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
