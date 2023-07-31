cask "pixel-perfect" do

  version "1.2"
  sha256 "163b96ba5bea26507a9625237726a20b8a4586250a6e5883700f20cadb65e386"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip",
    verified:   "github.com/cormiertyshawn895/"
  name "Pixel Perfect"
  desc "Pixel Perfect lets you increase the text size of iPhone and iPad apps on Mac. Say goodbye to small and blurry text, and enjoy pixel-perfect graphics, all rendered at 100% native resolution. Compatible with macOS Sonoma, macOS Ventura, macOS Monterey, and macOS Big Sur."
  homepage "https://github.com/cormiertyshawn895/PixelPerfect"
  caveats "After downloading Pixel Perfect, double click to open it. macOS may prompt you “Pixel Perfect cannot be opened because it is from an unidentified developer.” This is expected. To open Pixel Perfect, right-click on Pixel Perfect, then click “Open” as shown below."

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "Pixel Perfect/Pixel Perfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]
end
