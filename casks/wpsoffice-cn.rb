cask "wpsoffice-cn" do
  version "3.3.0,5120"
  sha256 "2c6fb103b7123c17ff00d11d3e6e00f74e1c293198fe8848415abc151a1f1f1c"

  # package.mac.wpscdn.cn was verified as official when first introduced to the cask
  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg"
  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://www.wps.cn/"

  depends_on macos: ">= :mojave"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
  ]
end
