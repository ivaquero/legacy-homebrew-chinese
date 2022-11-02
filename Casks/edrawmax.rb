cask "edrawmax" do
  version "9.2"
  sha256 "788ad616916cd7bc267cb65086cf03747c09658c5d1213c6f51b1d5022dbe811"

  language "CN", default: true do
    url "https://www.edrawsoft.cn/2download/edrawmax-cn-#{version}.dmg"
    homepage "http://www.edrawsoft.cn/"
  end

  language "en" do
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
