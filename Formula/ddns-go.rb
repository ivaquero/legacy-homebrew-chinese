class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  version "5.3.4"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  arch = Hardware::CPU.arm? ? "arm64" : "x86_64"

  if OS.mac?
    url "https://github.com/jeessy2/ddns-go/releases/download/v#{version}/ddns-go_#{version}_darwin_#{arch}.tar.gz"
  else
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.4/ddns-go_5.3.4_linux_x86_64.tar.gz"
    sha256 "f8b626bdbff4cffcc2db1627ff5f9f6709afb1a599efa0b27f5f5b8d5d14095d"
  end

  def install
    bin.install "ddns-go"
  end
end
