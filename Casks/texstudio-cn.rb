cask "texstudio-cn" do
  version "4.6.2"
  sha256 "22b9c1feeb5c8c9008389a545214e5d7ca36f66063c3fbed72596bcd727c9ee7"

  url "https://mirrors.tuna.tsinghua.edu.cn/github-release/texstudio-org/texstudio/LatestRelease/texstudio-#{version}-osx.dmg",
      verified: "mirrors.tuna.tsinghua.edu.cn/github-release/texstudio-org/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  livecheck do
    url "https://github.com/texstudio-org/texstudio/"
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "texstudio"
  depends_on macos: ">= :big_sur"
  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
