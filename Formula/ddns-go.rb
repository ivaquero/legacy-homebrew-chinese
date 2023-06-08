class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  version "5.3.3"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  arch = Hardware::CPU.arm? ? "arm64" : "x86_64"

  if OS.mac?
    url "https://github.com/jeessy2/ddns-go/releases/download/v#{version}/ddns-go_#{version}_darwin_#{arch}.tar.gz"
    if Hardware::CPU.intel?
      sha256 "49cec23312bf14a49a8e5c40636d5def8373c9dbab7cf71f16d25e7555adab66"
    else
      sha256 "1645ee5a0c2b9ac756eb74155cee91e97fc7ab2d9305f49df792523d3d0a78cb"
    end
  else
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.3/ddns-go_5.3.3_linux_x86_64.tar.gz"
    sha256 "56f8365223e5af07900dc3e8c27144640aa4724c44b089486ba103e778f535f5"
  end

  def install
    bin.install "ddns-go"
  end
end
