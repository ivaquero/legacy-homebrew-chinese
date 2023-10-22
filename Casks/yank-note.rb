cask "yank-note" do
  arch arm: "arm64", intel: "x64"

  version "3.60.1"
  sha256 arm:   "9520721f5dc9cffa990d7bf82a7d790829907b253a6bddc147e90a1af0de09a9",
         intel: "fe7928a383894e9d2a911147c0743eca92fd99b75914e01d419d7d5d8dc5a1da"

  url "https://github.com/purocean/yn/releases/download/v#{version}/Yank-Note-mac-#{arch}-#{version}.dmg",
      verified:   "github.com/purocean/yn/"
  name "Yank Note"
  desc "Highly extensible Markdown editor"
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
  ]
end
