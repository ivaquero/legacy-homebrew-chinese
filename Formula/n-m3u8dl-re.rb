class NM3u8dlRe < Formula
    arch = Hardware::CPU.intel? ? "x64" : "arm64"

    version "0.0.5-beta"

    if OS.mac?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_osx-#{arch}_20221017.tar.gz"

      on_intel do
        sha256 "2609b469535bf246927cf3143c5d48c03cc185d9e489592c552e60ad8a994877"
      end

      on_arm do
        sha256 "c44fc0bcad31c31b5de3b4bcdd73b160a6a550b49782fab8a18e0f4831b634c4"
      end

    elsif OS.linux?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_linux-#{arch}_20221017.tar.gz"

      on_intel do
        sha256 "a92e76e70f78587b23d19ec19b8685a78b38e3af9080d3f648b6a25e12e032d0"
      end

    end

    desc "Cross-Platform stream downloader for DASH/HLS"
    homepage "https://github.com/nilaoda/N_m3u8DL-RE"
    license "MIT"

    def install
      bin.install "N_m3u8DL-RE"
    end

end
