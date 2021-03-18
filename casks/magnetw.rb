cask "magnetw" do
  version "3.1.1"
  sha256 "38a1fdcb040e8269c266734a6d2274df487030c8ec80b4903493e55caae019ab"

  url "https://github.com/xiandanin/magnetW/releases/download/#{version}/magnetw-#{version}-mac.dmg"
  appcast "https://github.com/xiandanin/magnetW/releases.atom"
  name "magnetW"
  desc "Magnet-Link Search Engine"
  homepage "https://github.com/xiandanin/magnetW/"

  depends_on macos: ">= :sierra"

  app "magnetW.app"
end
