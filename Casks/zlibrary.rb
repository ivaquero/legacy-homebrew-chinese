cask "zlibrary" do
  version "latest"
  sha256 "224fe046e61228a897c04f7caae1a1a06da6ace7c74d59b2bef128ff8d3e2d38"

  url "https://zlibrary-asia.se/soft/zlibrary-setup-latest.dmg"
  name "Z-Library"
  desc "Your gateway to knowledge and culture"
  homepage "https://zlibrary-asia.se/"

  auto_updates true

  app "Z-Library.app"

  zap trash: [
    "~/Library/Application Support/Z-Library",
    "~/Library/Preferences/z-lib.plist",
    "~/Library/Saved Application State/z-lib.savedState",
  ]
end
