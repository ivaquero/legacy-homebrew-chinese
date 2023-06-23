cask "goldendict-ng" do
  version "6.4.3,20230601"
  sha256 "bc04acbd5db51d50b8b6262d69117304df96776472b7a1df7ad42dafafe573ff"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v23.06.01-ChildrenDay.230601.6d3d4053/#{version.csv.first}-GoldenDict_macos-12_homebrew_#{version.csv.second}.dmg"

  name "GoldenDict"
  desc "The Next Generation GoldenDict"
  homepage "http://goldendict.org/"

  livecheck do
    url "https://github.com/xiaoyifang/goldendict-ng"
  end

  depends_on macos: ">= :sierra"

  app "GoldenDict.app"
  binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"

  zap trash: [
    "~/Library/Preferences/org.goldendict.plist",
    "~/Library/Saved Application State/org.goldendict.savedState",
    "~/.goldendict",
  ]
end
