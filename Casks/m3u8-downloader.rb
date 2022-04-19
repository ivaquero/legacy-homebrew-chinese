cask "m3u8-downloader" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.7"
  
  if Hardware::CPU.intel?
    sha256 "033e5383fec82327196d8a58834a50f95a37d2e4dde9f397cdd34317a2a7d8d7"
  else
    sha256 "ac5ad32fe771ad09539f3dadfec65ff5b956de76316774f87b2abc6901d4c103"
  end
  
  url "https://github.com/HeiSir2014/M3U8-Downloader/releases/download/v#{version}/M3U8-Downloader-mac_#{arch}-#{version}.dmg"
  name "M3U8-Downloader"
  desc "Open-source M3U8 Downloader"
  homepage "https://tools.heisir.cn/HLSDownload/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "M3U8-Downloader.app"

  zap trash: [
    "~/Library/Application Support/M3U8-Downloader",
    "~/Library/Preferences/cn.heisir.m3u8-downloader-mac.plist",
    "~/Library/Saved Application State/cn.heisir.m3u8-downloader-mac.savedState",
    "~/Library/Logs/M3U8-Downloader",
    "~/Library/Caches/cn.heisir.m3u8-downloader-mac",
  ]
end
  