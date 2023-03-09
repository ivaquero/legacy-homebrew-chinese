cask "obs-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0.2"
  sha256 arm:   "8092dd2945114fc017c12d2670d97e7a518aab42f405fbad26bc2e227c1a156c",
         intel: "9d49e6bf4eafa7ca885043888b1292dba70a6958240a7fe9fbf144716f77c14e"

  url "https://mirrors.bfsu.edu.cn/github-release/obsproject/obs-studio/LatestRelease/obs-studio-#{version}-macos-#{arch}.dmg",
      verified: "mirrors.bfsu.edu.cn/"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/download/"
    regex(%r{href=.*?/obs[._-]studio[._-]v?(\d+(?:\.\d+)+).*?\.dmg}i)
  end

  auto_updates true
  conflicts_with cask: ["homebrew/cask-versions/obs-beta", "obs"]
  depends_on macos: ">= :catalina"

  app "OBS.app"

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
