cask "edrawmax" do
  version "9.2"
  sha256 :no_check

  language "CN" do
    url "https://www.edrawsoft.com/archives/edrawmax-#{version}.dmg"
    homepage "http://www.edrawsoft.cn/"
  end

  language "en", default: true do
    url "https://www.edrawsoft.com/archives/edrawmax-#{version}.dmg"
    homepage "https://www.edrawsoft.com/"
  end

  name "EdrawMax"
  desc "Diagram software"
  app "EdrawMax.app"

  zap trash: [
    "~/Library/Edraw",
    "~/Library/Preferences/com.edrawsoft.edrawmax.plist",
    "~/Library/Saved Application State/com.edrawsoft.edrawmax.savedState",
  ]
end
