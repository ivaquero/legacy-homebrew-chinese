cask "clash-verge" do
  version "1.3.8"
  sha256 "fd8370323a695a8828d1a7487c9e74200ce36b51b324495bfba21498c6fc8c48"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_aarch64.dmg"
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
