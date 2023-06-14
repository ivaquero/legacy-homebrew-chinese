class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  version "5.3.5"
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
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.5/ddns-go_5.3.5_linux_x86_64.tar.gz"
    sha256 "c6ae2321bd7ee59e63aa26b827e17ded2f499aa3ca8fa1c69ed6aa2260ba4a8b"
  end

  def install
    bin.install "ddns-go"
  end
end
