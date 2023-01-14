cask "eshelper" do
  version "4.2.9,1081"
  sha256 "a20ad097768b15ce09fe3235d2b7c6e9e04567fe104e7ad23e6268c1c96845ed"

  url "https://static.frdic.com/pkg/ehmac.dmg??v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "Eshelper"
  name "西语助手"
  desc "Spanish Chinese dictionary and learning tool"
  homepage "https://www.eudic.net/v4/es/app/eshelper"

  livecheck do
    url "https://www.eudic.net/update/eshelper_mac.xml"
    strategy :sparkle
  end

  app "Eudic_es.app"

  uninstall quit: [
    "com.eusoft.eshelper",
    "com.eusoft.eshelper.LightPeek",
    "com.eusoft.eshelper.QuickLook",
  ]

  zap trash: [
    "~/Library/Application Support/com.eusoft.eshelper",
    "~/Library/Caches/com.eusoft.eshelper.LightPeek",
    "~/Library/Caches/com.eusoft.eshelper",
    "~/Library/Containers/com.eusoft.eshelper.QuickLook",
    "~/Library/Eudb_es",
    "~/Library/Preferences/com.eusoft.eshelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.eshelper.plist",
    "~/Library/Preferences/group.com.eusoft.eshelper.plist",
  ]
end
