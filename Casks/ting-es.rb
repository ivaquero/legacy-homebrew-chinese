cask "ting-es" do
  version "9.5.2,2022-09-19"
  sha256 :no_check

  url "https://static.frdic.com/pkg/ting_es/ting_es.dmg?ver=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "每日西语听力"
  homepage "http://www.francochinois.com/v4/es/app/ting"

  livecheck do
      url "http://www.francochinois.com/v4/es/app/history?appkey=eusoft_ting_es"
      strategy :page_match do |page|
        v = page.scan(regex(/\d+\.\d+\.\d+/i)).first
        year, month, day = page.scan(regex(/\d{4}年\d+月\d+日/i)).second.sub("年", "-").sub("月", "-").sub("日", "").split("-")
        date = format("%d-%02d-%02d", year, month, day)
        next if v.blank? || date.blank?

        "#{v},#{date}"
      end
  end

  depends_on macos: ">= :sierra"
  app "每日西语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_es",
    "~/Library/Caches/com.eusoft.ting.es",
    "~/Library/Preferences/com.eusoft.ting.es.plist",
    "~/Library/Saved Application State/com.eusoft.ting.es.savedState",
  ]
end
