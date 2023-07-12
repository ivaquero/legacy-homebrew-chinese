cask "yank-note" do
  arch arm: "arm64", intel: "x64"

  version "3.54.0"
  sha256 arm:   "d9cd54be5ba48f0ff8a6c96735230f43ef95709b3a6f704e7a1c1fd75f44283a",
         intel: "e7196d549b965cf58bc52c7c509b42eeea6229ad0377ecccdf06ad96a357907a"

  url "https://github.com/purocean/yn/releases/download/v#{version}/Yank-Note-mac-#{arch}-#{version}.dmg"
      verified:   "yank-note.com/",
      user_agent: :fake
  name "Yank Note"
  desc "A highly extensible Markdown editor. Version control, AI completion, mind map, documents encryption, code snippet running, integrated terminal, chart embedding, HTML applets, Reveal.js, plug-in, and macro replacement."
  homepage "https://yank-note.com/zh-CN"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Yank Note.app"

  zap trash: [
    "~/Library/Application Support/yank.note",
    "~/Library/Saved Application State/yank.note.savedState",
    "~/Library/Preferences/yank.note.plist",
    "~/Library/Logs/yank.note",
    "/private/var/folders/kh/3z1m41y56mgd98lxmb9zjjsw0000gn/T/.yank.note.MV2ZNg",
    "/private/var/folders/kh/3z1m41y56mgd98lxmb9zjjsw0000gn/C/yank.note.helper.GPU",
  ]
end
