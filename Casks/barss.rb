cask "barss" do
  version "1.2.2"
  sha256 "e58add78e127c1673a3f8e1c8904ffaf77473a54895ffeb94effc2d4000500f8"
  
  url "https://github.com/relikd/baRSS/releases/download/v#{version}/baRSS_#{version}.zip",
      verified: "github.com/relikd/baRSS/"
  name "baRSS"
  desc "Menu Bar RSS reader for macOS"
  homepage "https://relikd.de/projects/barss/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "baRSS.app"

  zap trash: [
    "~/Users/mrered/Library/Application Scripts/de.relikd.baRSS",
    "~/Users/mrered/Library/Containers/de.relikd.baRSS",
  ]
end
