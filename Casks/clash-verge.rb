cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "dabfa1e640db425fa2db5d15cf694e49560bc62856a49184a33e1417831f5994",
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
