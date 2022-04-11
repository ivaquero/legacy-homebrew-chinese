cask "ting-es" do
  version "9.5.0"
  sha256 "8acb81612fe7654e1ade91f7a97e621d8baf83c30053052629b82ab6a16c1244"

  url "https://static.frdic.com/pkg/ting_es/ting_es.dmg",
      verified:   "static.frdic.com/",
      user_agent: :fake
  
  name "每日西语听力"
  homepage "http://www.francochinois.com/v4/es/app/ting"

  depends_on macos: ">= :sierra"

  livecheck do
      url "http://www.francochinois.com/v4/es/app/history?appkey=eusoft_ting_es"
      strategy :sparkle
  end

  app "每日西语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_es",
    "~/Library/Caches/com.eusoft.ting.es",
    "~/Library/Preferences/com.eusoft.ting.es.plist",
    "~/Library/Saved Application State/com.eusoft.ting.es.savedState"
  ]
  
end
