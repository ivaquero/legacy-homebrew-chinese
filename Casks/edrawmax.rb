cask "edrawmax" do
  version "9.2"
  sha256 "afd6ee12ad2f8205af9dfbae6418c07f3766ee1e69533eca2c39e2b6636225c3"

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
