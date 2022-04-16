cask "wpsoffice-cn" do
  version "4.1.1,6630"
  sha256 "123a2b397a1624bf5c9adc3aeff9bfc9cfa5447c6eeb9351fa7f224d6eca5676"

  # package.mac.wpscdn.cn was verified as official when first introduced to the cask
  url "https://wpscdn-macos-pkg.ks3-cn-beijing.ksyun.com/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg"

  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://mac.wps.cn/"

  depends_on macos: ">= :mojave"

  livecheck do
      url "https://mac.wps.cn"
      strategy :page_match do |page|
        page.scan(%r{\d+\.\d+\.\d+}i).first + "," + page.scan(%r{\(\d{4}\)}i).first.gsub("(", "").gsub(")", "")
      end
  end

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
  ]
end
