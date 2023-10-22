cask "barss" do
  version "1.2.2"
  sha256 "85c25f7d1fa0e3c66ae0de06886e746fa040f6416bd0e9903ab1e2744922c04f"
  
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
