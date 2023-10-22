cask "freefilesync" do
  version "13.0"
  sha256 "2d8c529e4b62ea2c436fdc167fb43dc9c9c0bf0cc5371678dc4272ce0bfdfdd8"

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://www.freefilesync.org/"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"
end
