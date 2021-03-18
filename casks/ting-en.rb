cask "ting-en" do
  version "9.2.0"
  sha256 "bdb31d2a7f7990906ec8f0348c4f357f57aa44f35b983800e64011366207aa79"

  url "https://static.frdic.com/pkg/ting_en/ting_en.dmg",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/en/app/history?appkey=eusoft_ting_en",
          must_contain: version
  name "每日英语听力"
  homepage "https://www.eudic.net/v4/en/app/ting"

  depends_on macos: ">= :sierra"

  auto_updates true

  app "每日英语听力.app"
end
