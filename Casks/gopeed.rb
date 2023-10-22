cask "gopeed" do
  version "1.4.2"
  sha256 :no_check

  url "https://github.com/GopeedLab/gopeed/releases/download/v#{version}/Gopeed-v#{version}-macos.dmg",
      verified:   "github.com/GopeedLab/gopeed/"
  name "Gopeed"
  desc "High speed downloader that supports all platforms."
  homepage "https://gopeed.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "Gopeed.app"

  zap trash: [
    "~/Library/Application Scripts/com.gopeed",
    "~/Library/Containers/com.gopeed",
  ]
end
