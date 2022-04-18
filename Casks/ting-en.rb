cask "ting-en" do
  version "9.5.0,2022-03-07"
  sha256 :no_check

  url "https://static.frdic.com/pkg/ting_en/ting_en.dmg?ver=#{version.csv.second}",
      verified:   "static.frdic.com/",
      user_agent: :fake

  name "每日英语听力"
  homepage "http://www.francochinois.com/v4/en/app/ting"

  depends_on macos: ">= :sierra"

  livecheck do
      url "http://www.francochinois.com/v4/en/app/history?appkey=eusoft_ting_en"
      strategy :page_match do |page|
        v = page.scan(%r{\d+\.\d+\.\d+}i).first 
        year, month, day  = page.scan(%r{\d{4}年\d+月\d+日}i).second.sub("年", "-").sub("月", "-").sub("日", "").split("-")

        date = "%d-%02d-%02d" % [year, month, day]
        
        next if v.blank? || date.blank?

        "#{v},#{date}"
      end
  end

  app "每日英语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_en",
    "~/Library/Caches/com.eusoft.ting.en",
    "~/Library/Preferences/com.eusoft.ting.en.plist",
    "~/Library/Saved Application State/com.eusoft.ting.en.savedState"
  ]

end
