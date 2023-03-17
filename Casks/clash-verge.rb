cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "e277e4b93f7ac10d6e92afcc34e37fb6d235e5d4ce372988c804b90b0c6b0668",
         intel: "40404c7018aacf6d4383c04faee0fa53e01759be7bb1b9bf18610ea1abeb3860"

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
