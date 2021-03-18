cask "wpsoffice-cn" do
  version "3.3.0,5120"
  sha256 "b36de75645e2fab6423a9f87887ed60245583ff553708cfcad57a8e04b08685c"

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
