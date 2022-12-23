cask "gimp-cn" do
  arch arm: "arm64", intel: "x86_64"

  version "2.10.32-1"
  sha256 arm:   "4c3ae0ce49920fa3a8dd247888cd90fba8fd4a216f8759e8daa14754d25a5ed7",
         intel: "5669ca1f0ce63b0b7c2efd1ac1998116e5ea367b376d453f8341a5d28093f87f"

  url "https://mirrors.ustc.edu.cn/gimp/v#{version.major_minor}/macox/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    strategy :page_match
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: ["gimp", "homebrew/cask-versions/gimp-dev"]

  app "GIMP.app"
  binary "#{appdir}/GIMP.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
