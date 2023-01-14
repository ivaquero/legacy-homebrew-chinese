cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "e46790e59ba416d2513e24ce5d944d49287f4ff8fa82f3edb72b37e91e3fe24d",
         intel: "7ca2940d0af710de1cbfc85279dc9c2a13f9ee479774a35df689d222292abfa4"

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
