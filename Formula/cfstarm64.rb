class Cfstarm64 < Formula
  desc "Select the best IP for your Mac on Cloudflare CDN"
  homepage "https://github.com/XIU2/CloudflareSpeedTest"
  url "https://github.com/Mrered/homebrew-cloudflarest/releases/download/v2.2.2/CloudflareST_darwin_arm64.tar.gz"
  sha256 "75e8996768dc5caff382bc8eeec64b6002675d82ba6816e0d8c75d9744761c28"
  version "2.2.2"
  license "GPL-3.0"

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
