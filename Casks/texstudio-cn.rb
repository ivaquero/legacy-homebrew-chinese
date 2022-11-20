cask "texstudio-cn" do
  version "4.4.0"
  sha256 "520ba7f8cc9e3624342f9c1bcb3f85ec6a6df380227405cb99085fd2f8bee36a"

  url "https://mirrors.bfsu.edu.cn/github-release/texstudio-org/texstudio/LatestRelease/texstudio-#{version}-osx.dmg",
      verified: "mirrors.bfsu.edu.cn/github-release/texstudio-org/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  conflicts_with cask: "texstudio"
  depends_on macos: ">= :big_sur"

  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
