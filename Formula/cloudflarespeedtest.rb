class Cloudflarespeedtest < Formula
  desc "Select the best IP for your Mac on Cloudflare CDN"
  homepage "https://github.com/XIU2/CloudflareSpeedTest"
  version "2.2.3"
  license "GPL-3.0"

  arch = Hardware::CPU.arm? ? "arm64" : "amd64"
  
  url "https://github.com/XIU2/CloudflareSpeedTest/releases/download/v#{version}/CloudflareST_darwin_#{arch}.zip"
  if Hardware::CPU.arm?
    sha256 "52972db6391bd9247b198e516850f3b270bf24e3d5aca4edc5a6602aefb76dc5"
  else
    sha256 "93802ce59f845a5523228219fe7f318d981c872624cfabdc05abb2a39a547ba9"
  end

  def install
    bin.install "CloudflareST"
    bin.install "ipv6.txt"
    bin.install "ip.txt"
    bin.install "cfst_hosts.sh"
    bin.install "注意 2.1.0 版本移除了 -ipv6 参数.txt"
    bin.install "使用+错误+反馈说明.txt"
  end

  def caveats
    <<~EOS
    How to use: https://github.com/XIU2/CloudflareSpeedTest
    EOS
  end
end
