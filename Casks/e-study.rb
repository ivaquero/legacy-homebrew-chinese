cask "e-study" do
  version "4.0.1"
  sha256 :no_check

  url "https://download.cnki.net/CNKI%20E-Study%20For%20Mac.dmg"
  name "e-study"
  desc "Essential Tools for Brainiacs"
  homepage "https://e-study.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/最新版本 v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  app "知网研学（原E-Study）.app"

  zap trash: [
    "~/Library/Preferences/net.cnki.EStudy.plist",
    "~/Library/HTTPStorages/net.cnki.EStudy.binarycookies",
    "~/Library/HTTPStorages/net.cnki.EStudy",
  ]
end
