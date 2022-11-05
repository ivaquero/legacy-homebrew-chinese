cask "texstudio-cn" do
    version "4.3.1"
    sha256 "cf42128117a833490805564fe632da59c7fb1938b868b8083811b36c25a97a92"

    url "https://mirrors.bfsu.edu.cn/github-release/texstudio-org/texstudio/LatestRelease/#{version}/texstudio-#{version}-osx.dmg",
        verified: "mirrors.bfsu.edu.cn/github-release/texstudio-org/"
    name "TeXstudio"
    desc "LaTeX editor"
    homepage "https://texstudio.org/"

    depends_on macos: ">= :big_sur"

    app "texstudio.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
      "~/Library/Preferences/texstudio.plist",
      "~/Library/Saved Application State/texstudio.savedState",
    ]
  end
