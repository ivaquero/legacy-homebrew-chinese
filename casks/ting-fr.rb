cask "ting-fr" do
  version "9.2.0"
  sha256 "cbb80154534d2b37995d178e51c82f73b8cd5374a8381d6b034bd505a6ae0e00"

  url "https://static.frdic.com/pkg/ting_fr/ting_fr.dmg",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/fr/app/history?appkey=eusoft_ting_fr",
          must_contain: version
  name "每日法语听力"
  homepage "https://www.eudic.net/v4/fr/app/ting"

  depends_on macos: ">= :sierra"

  auto_updates true

  app "每日法语听力.app"
end
