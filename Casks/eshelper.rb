cask "eshelper" do
  version "4.2.0,1070"
  sha256 "71c386b764d8d7a06bd66d490008651b4a3d6d5320517b6c742fbd7b6e5a4710"

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/ehmac.dmg??v=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  
  name "Eshelper"
  name "西语助手"
  desc "Spanish Chinese dictionary and learning tool"
  homepage "http://www.francochinois.com/v4/es/app/download"

  livecheck do
      url "http://www.francochinois.com/update/eshelper_mac.xml"
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
    "~/Library/Preferences/group.com.eusoft.eshelper.plist"
  ]
end
