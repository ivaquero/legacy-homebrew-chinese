cask "app-cleaner-cn" do
  version "8.2.4"
  sha256 :no_check

  url "https://download.nektony.com/download/app-cleaner-uninstaller/localized/app-cleaner-uninstaller-cn.dmg"
  name "app-cleaner-cn"
  desc "在Mac上卸载应用程序而不会留下任何痕迹"
  homepage "https://nektony.com/zh-hans/mac-app-cleaner"

  livecheck do
    url :url
    strategy :header_match
    regex(/最新版本 v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  app "App Cleaner 8.app"

  zap trash: [
    "~/Library/HTTPStorages/com.nektony.App-Cleaner-SIIICn",
    "~/Library/HTTPStorages/com.nektony.App-Cleaner-SIII",
    "~/Library/Application Support/com.nektony.App-Cleaner-SIII",
    "~/Library/Application Support/com.nektony.App-Cleaner-SIIICn",
    "~/Library/Application Scripts/com.nektony.App-Cleaner-SIIICn",
    "~/Library/Application Scripts/8DKG4XB37M.group.com.nektony.MacCleaner-PRO-SIII",
    "~/Library/Group Containers/8DKG4XB37M.group.com.nektony.MacCleaner-PRO-SIII",
    "~/Library/Saved Application State/com.nektony.App-Cleaner-SIIICn.savedState",
    "~/Library/Preferences/com.nektony.App-Cleaner-SII.plist",
    "~/Library/Preferences/com.nektony.App-Cleaner-SIII.plist",
    "~/Library/Preferences/com.nektony.App-Cleaner-SIIICn.plist",
    "~/Library/Preferences/com.nektony.MacCleanerProCommonCn.plist",
    "~/Library/Preferences/group.com.nektony.MacCleaner-PRO-SIII.plist",
  ]
end
