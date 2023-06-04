class DdnsGo < Formula
  desc "Simple and easy-to-use DDNS"
  homepage "https://github.com/jeessy2/ddns-go"
  license "MIT"

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
    url "https://github.com/jeessy2/ddns-go/releases/download/v5.3.1/ddns-go_5.3.1_linux_x86_64.tar.gz"
    sha256 "ce536c825cd99b68fc3674abbdc6643224b98a27afd3d3b21562dc38fd1f8d28"
  end
  
    def install
      bin.install "ddns-go"
    end
  end
