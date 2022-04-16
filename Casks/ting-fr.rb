cask "ting-fr" do
  version "9.5.0,2022-03-07"
  sha256 "152f31bb9e7551cd47d0727ed36e4abeb11d2fe57a0397dd35c015a761e49738"

  url "https://static.frdic.com/pkg/ting_fr/ting_fr.dmg?ver=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake

  name "每日法语听力"
  homepage "http://www.francochinois.com/v4/fr/app/ting"

  depends_on macos: ">= :sierra"

  livecheck do
      url "http://www.francochinois.com/v4/fr/app/history?appkey=eusoft_ting_fr"
      strategy :page_match do |page|
        page.scan(%r{\d+\.\d+\.\d+}i).first + "," + page.scan(%r{\d{4}年\d+月\d+日}i).second.gsub("年", "-").gsub("月", "-").gsub("日", "")
      end
  end

  app "每日法语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_fr",
    "~/Library/Caches/com.eusoft.ting.fr",
    "~/Library/Preferences/com.eusoft.ting.fr.plist",
    "~/Library/Saved Application State/com.eusoft.ting.fr.savedState"
  ]

end
