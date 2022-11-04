cask "ting-fr" do
  version "9.5.2,2022-09-19"
  sha256 :no_check

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/ting_fr/ting_fr.dmg",
      verified:   "static.frdic.com/",
      user_agent: :fake
  name "每日法语听力"
  homepage "http://www.francochinois.com/v4/fr/app/ting"

  depends_on macos: ">= :sierra"

  app "每日法语听力.app"

  zap trash: [
    "~/Library/Application Support/ting_fr",
    "~/Library/Caches/com.eusoft.ting.fr",
    "~/Library/Preferences/com.eusoft.ting.fr.plist",
    "~/Library/Saved Application State/com.eusoft.ting.fr.savedState",
  ]
end
