cask "nutstore-auto" do
  version :latest
  sha256 :no_check

  url "https://www.jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg"
  name "Nutstore"
  homepage "https://www.jianguoyun.com/"

  installer script: {
    executable: "坚果云安装程序.app/Contents/MacOS/NutstoreOnlineInstaller",
    args:       ["-silent"],
    sudo:       true,
  }

  uninstall launchctl:  "net.nutstore.agent",
            quit:       [
              "net.nutstore.NutstoreJavaBE",
              "net.nutstore.osxapp",
              "net.nutstore.osxapp.FinderSyncExtension",
            ],
            login_item: "Nutstore",
            delete:     "/Applications/Nutstore.app"

  zap trash: [
    "~/Library/Saved Application State/net.nutstore.osxapp.nutstoreInstaller.savedState",
    "~/Library/Preferences/net.nutstore.osxapp.plist",
    "~/Library/Preferences/net.nutstore.NutstoreJavaBE.plist",
  ]
end
