cask "obs-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1.1"
  sha256 arm:   "d10fbd16e35343c363a4efac5c1dea4c54293f19ee4662c5b017ffd11fd7301f",
         intel: "300d3bb9da40ecd8496d2c971b8c197ea67d582fdfb821267d93332e06e77f64"

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
