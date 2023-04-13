cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "6b4c2cdd27107353d38cf938dab01b46612ea9726beef65ab0dbfc837bb86010",
         intel: "67360bbbfb06fb55ed0c3660d56b7244a1894f16a9ed842518af9bf85df83d2a"

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
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]
end
