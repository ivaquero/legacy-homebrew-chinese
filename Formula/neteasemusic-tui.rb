class NeteasemusicTui < Formula
  desc "Netease Cloud Music Terminal Client and Rust."
  homepage "https://github.com/betta-cyber/netease-music-tui"
  version "0.1.4"
  if OS.mac?
    url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-macos.tar.gz"
    sha256 "9943f835d202bafdd8f39ee9a5bf9dced544773a8e866b97a74ea50707a4e6ad"
  elsif OS.linux?
    url "https://github.com/betta-cyber/netease-music-tui/releases/download/v#{version}/netease-music-tui-linux.tar.gz"
    sha256 "e40e65788e642119574ddb0144c5859d72749080d10bc761cb81c7da34a57f44"
  end

  def install
    bin.install "ncmt"
    ohai "You're done! Run with \"ncmt\""
    ohai "If you want to configure NCMT, by default NCMT looks for a file in ${HOME}/.config/netease-music-tui/Settings.toml"
  end
end
