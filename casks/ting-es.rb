cask "ting-es" do
  version "9.2.0"
  sha256 "65b9a6cf2501885e907ec4902644f2be5c09199cf0e01190d701a69f23a67f7f"

  url "https://static.frdic.com/pkg/ting_es/ting_es.dmg",
      user_agent: :fake
  appcast "https://www.eudic.net/v4/es/app/history?appkey=eusoft_ting_es",
          must_contain: version
  name "每日西语听力"
  homepage "https://www.eudic.net/v4/es/app/ting"

  depends_on macos: ">= :sierra"

  auto_updates true

  app "每日西语听力.app"
end
