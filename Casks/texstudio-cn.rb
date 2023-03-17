cask "texstudio-cn" do
  version "4.5.1"
  sha256 "1285327136a77d12a8e73d84b0f14a7b835e6df09849b9ee444e011e36c15262"

  url "https://mirrors.bfsu.edu.cn/github-release/texstudio-org/texstudio/LatestRelease/texstudio-#{version}-osx.dmg",
      verified: "mirrors.bfsu.edu.cn/github-release/texstudio-org/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  auto_updates true
  conflicts_with cask: "texstudio"
  depends_on macos: ">= :big_sur"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
