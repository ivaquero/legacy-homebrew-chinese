cask "freefilesync" do
  version "12.5"
  sha256 "ee8c3b3da2a5b36d8cd2ff15a762fe4cb3cb0d2add41ea902c6736236fe9e44c"

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "FreeFileSync"
  desc "Folder comparison and synchronization software"
  homepage "https://www.freefilesync.org/"

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"
end
