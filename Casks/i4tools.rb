cask "i4tools" do
  version "1.17.007"
  sha256 "b91e082f6aa07b455a5d202f9f26a3f98a1d55013a2c6932a064a8a7ee7b8a93"

  url "https://url.i4.cn/fqIBBbaa"
  name "i4Tools"
  name "爱思助手"
  desc "Mobile device management software"
  homepage "https://www.i4.cn/"

  livecheck do
    url :url
    strategy :header_match
    regex(/i4Tools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  pkg "i4tools.pkg"

  uninstall quit:    "cn.i4tools.mac",
            pkgutil: "cn.i4tools.mac"

  zap trash: [
    "~/Library/Application Support/i4Airplayer/",
    "~/Library/Application Support/i4Tools/",
    "~/Library/Preferences/cn.i4tools.mac.plist",
    "~/Library/Preferences/org.example.i4AirPlayer.plist",
    "~/Library/Saved Application State/org.example.i4AirPlayer.savedState",
  ]
end
