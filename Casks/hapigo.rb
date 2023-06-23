cask "hapigo" do
  version "2.9.0"
  sha256 "07ea74c9998ba41ba5a490590e1c2a727810527cce4397ca2278be31e51279bc"

  url "https://dl.hapigo.com/HapiGo.dmg"
  name "HapiGo"
  desc "Essential Tools for Brainiacs"
  homepage "https://hapigo.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/最新版本 v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  app "HapiGo.app"

  zap trash: [
    "~/Library/Application Support/Hapigo/",
    "~/Library/Caches/Hapigo/",
    "~/Library/Preferences/com.xunyong.hapigo",
  ]
end
