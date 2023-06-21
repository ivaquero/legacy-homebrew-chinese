class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  version "5.3.6"
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
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.6/ddns-go_5.3.6_linux_x86_64.tar.gz"
    sha256 "e5df051118a9f256ca0baddd7601391554aa32c0d975ca65713a848c986f1098"
  end

  def install
    bin.install "ddns-go"
  end
end
