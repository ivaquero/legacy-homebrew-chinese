class NeteasemusicTui < Formula
  desc "Netease Cloud Music Terminal Client and Rust."
  homepage "https://github.com/betta-cyber/netease-music-tui"
  version "0.1.5"

  if OS.mac?
    url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-macos.tar.gz"
    sha256 "003488c11dffbaafdf61a9e6ff4c4d1597c11bd26d6dbd0b7429ffbb955e33b9"
  elsif OS.linux?
    url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-linux.tar.gz"
    sha256 "fce662099cf92d469c001dd20e0e43b1f052fbdd1df346ec96b3b2b466084163"
  end

  def install
    bin.install "ncmt"
    ohai "You're done! Run with \"ncmt\""
    ohai "If you want to configure NCMT, by default NCMT looks for a file in ${HOME}/.config/netease-music-tui/Settings.toml"
  end
end
