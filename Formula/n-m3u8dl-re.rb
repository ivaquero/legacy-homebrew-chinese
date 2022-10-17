class NM3u8dlRe < Formula
    arch = Hardware::CPU.intel? ? "x64" : "arm64"

    version "0.0.4-beta"

    if OS.mac?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_osx-#{arch}_20221017.tar.gz"
      sha256 "c44fc0bcad31c31b5de3b4bcdd73b160a6a550b49782fab8a18e0f4831b634c4"
    elsif OS.linux?
      url "https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v#{version}/N_m3u8DL-RE_Beta_linux-#{arch}_20221017.tar.gz"
      sha256 "41e45542587caa27bf8180e66c72c6c77e83d00f8dcba2e952c5a9b04d382c6c"
    end

    desc "Cross-Platform stream downloader for DASH/HLS"
    homepage "https://github.com/nilaoda/N_m3u8DL-RE"
    license "MIT"

end
