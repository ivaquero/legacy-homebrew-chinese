cask "ting-en" do
  version "9.5.0"
  sha256 "c84c420fbcd279348a99b65debd1f2b390ee4b274e5a1ea632b8fd9cd2cf69e0"

  url "https://static.frdic.com/pkg/ting_en/ting_en.dmg",
      verified:   "static.frdic.com/",
      user_agent: :fake

  name "每日英语听力"
  homepage "http://www.francochinois.com/v4/en/app/ting"

  depends_on macos: ">= :sierra"

  livecheck do
      url "http://www.francochinois.com/v4/en/app/history?appkey=eusoft_ting_en"
      strategy :sparkle
  end

  app "每日英语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_en",
    "~/Library/Caches/com.eusoft.ting.en",
    "~/Library/Preferences/com.eusoft.ting.en.plist",
    "~/Library/Saved Application State/com.eusoft.ting.en.savedState"
  ]

end
