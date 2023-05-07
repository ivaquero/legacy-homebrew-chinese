cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "e2dcb15017e1543e2bb23764405bc01e421072cf6a215e1b0b50d181af6e4730",
         intel: "48297a761719702187133488197d4b39953f8e45db1811296e232e579c967af2"

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
