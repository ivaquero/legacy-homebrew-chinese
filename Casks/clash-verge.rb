cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "e86bd762f14818a68958814b1599adde3e12111f434e9b750dd80a4ae040f3ae",
         intel: "c41ada415800a6626489fa2c6371be0a4f91b9115df2fdeaf57b4a69bd534315"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash for Windows"
  desc "Cross-Platform Clash GUI based on tauri"
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
