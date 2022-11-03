cask "ting-fr" do
  version "9.5.2,2022-09-19"
  sha256 :no_check

  url "https://static.frdic.com/pkg/ting_fr/ting_fr.dmg?ver=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "每日法语听力"
  homepage "http://www.francochinois.com/v4/fr/app/ting"

  livecheck do
      url "http://www.francochinois.com/v4/fr/app/history?appkey=eusoft_ting_fr"
      strategy :page_match do |page|
        v = page.scan(regex(/\d+\.\d+\.\d+/i)).first
        year, month, day = page.scan(regex(/\d{4}年\d+月\d+日/i)).second.sub("年", "-").sub("月", "-").sub("日", "").split("-")
        date = format("%d-%02d-%02d", year, month, day)
        next if v.blank? || date.blank?

        "#{v},#{date}"
      end
  end

  depends_on macos: ">= :sierra"
  app "每日法语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_fr",
    "~/Library/Caches/com.eusoft.ting.fr",
    "~/Library/Preferences/com.eusoft.ting.fr.plist",
    "~/Library/Saved Application State/com.eusoft.ting.fr.savedState",
  ]
end
