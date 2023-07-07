cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "188b5668052ce170f297e9fc83240f78ee4f745d8cdbccc767f01844c72a5509",
         intel: "5930a7aa4ac2bf3341f494c81d703b242d38d6b2802177b74f2ecfb585640c87"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash for Windows"
  desc "Cross-Platform Clash GUI based on Tauri"
  homepage "https://github.com/zzzgydi/clash-verge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"

  zap trash: [
    "~/.config/clash-verge",
    "~/Library/Caches/top.gydi.clashverge",
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]
end
