cask "chatbox" do
  arch arm: "x64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "448df09d54aef3e38df351fe24c4466ebb6b66ebc2721ea1d736bbc01e4b560f",
         intel: "448df09d54aef3e38df351fe24c4466ebb6b66ebc2721ea1d736bbc01e4b560f"

  url "https://github.com/Bin-Huang/chatbox/releases/download/Chatbox-v#{version}/chatbox_#{version}_#{arch}.dmg"
  name "Chatbox"
  desc "Cross-platform desktop application for ChatGPT API"
  homepage "https://github.com/Bin-Huang/chatbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Chatbox.app"

  zap trash: [
    "~/Library/Application\ Support/xyz.chatboxapp.app"
  ]
end
