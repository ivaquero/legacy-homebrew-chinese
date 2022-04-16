cask "mambaforge-cn" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "4.12.0-0"

  if Hardware::CPU.intel?
    sha256 "2301f866fb239ce6cda3e741e00be22ff7aa5ff76ba5683509ebae58df917546"
  else
    sha256 "d0a86d865d3881f26bc0e677a83b7fdff700536e654cd8490c8fdc1731f93f6c"
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
