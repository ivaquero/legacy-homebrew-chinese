cask "wpsoffice-cn" do
  version "4.2.0,6717"

  if Hardware::CPU.intel?
    sha256 "0e68e797253863fff96fc6f022657dab4914731ddaf4e8f32799be3bb6483a85"

    url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})_x64.dmg"
  else
    sha256 "0e68e797253863fff96fc6f022657dab4914731ddaf4e8f32799be3bb6483a85"

    url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.csv.first}/WPS_Office_#{version.csv.first}(#{version.csv.second})arm64.dmg"
  end

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
