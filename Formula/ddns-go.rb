class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  version "5.3.2"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  arch = Hardware::CPU.arm? ? "arm64" : "x86_64"

  if OS.mac?
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.1/ddns-go_5.3.1_darwin_#{arch}.tar.gz"
    if Hardware::CPU.intel?
      sha256 "49cec23312bf14a49a8e5c40636d5def8373c9dbab7cf71f16d25e7555adab66"
    else
      sha256 "1645ee5a0c2b9ac756eb74155cee91e97fc7ab2d9305f49df792523d3d0a78cb"
    end
  else
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.2/ddns-go_5.3.2_linux_x86_64.tar.gz"
    sha256 "1eb7289d83eb58c5c828bae4718cd5f28708e44ba926e2e35cd20aca04724ac4"
  end

  def install
    bin.install "ddns-go"
  end
end
