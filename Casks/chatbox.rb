cask "chatbox" do
  arch arm: "x64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "c5b481a3f3262670d5fce7ebe4f6a654c425ba0ef51ebf79181b78709ff376eb",
         intel: "c5b481a3f3262670d5fce7ebe4f6a654c425ba0ef51ebf79181b78709ff376eb"

  url "https://github.com/Bin-Huang/chatbox/releases/download/Chatbox-v#{version}/chatbox_#{version}_#{arch}.dmg"
  name "Chatbox"
  desc "Cross-platform desktop application for ChatGPT API"
  homepage "https://github.com/Bin-Huang/chatbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Chatbox.app"

  zap trash: []
end
