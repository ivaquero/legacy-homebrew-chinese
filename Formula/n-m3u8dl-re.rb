class NM3u8dlRe < Formula
    arch = Hardware::CPU.intel? ? "x64" : "arm64"

    version "0.0.5-beta"

    if OS.mac?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_osx-#{arch}_20221017.tar.gz"

      on_intel do
        sha256 "d2821d34d69048afd20e6ab49d3566147ab6b84aea4c10e5b3f1d737d6d88c3d"
      end

      on_arm do
        sha256 "c44fc0bcad31c31b5de3b4bcdd73b160a6a550b49782fab8a18e0f4831b634c4"
      end

    elsif OS.linux?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_linux-#{arch}_20221017.tar.gz"

      on_intel do
        sha256 "c96b5c120fa67821c632c316506d536eb7c79650c2cb5d725ab1beed067f0644"
      end

      on_arm do
        sha256 "c44fc0bcad31c31b5de3b4bcdd73b160a6a550b49782fab8a18e0f4831b634c4"
      end

    end

    desc "Cross-Platform stream downloader for DASH/HLS"
    homepage "https://github.com/nilaoda/N_m3u8DL-RE"
    license "MIT"

    def install
      bin.install "N_m3u8DL-RE"
    end

end
