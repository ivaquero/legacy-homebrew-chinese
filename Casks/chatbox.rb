cask "chatbox" do
  arch arm: "x64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "96688ba9f43e79e2fe3badf5e5bc1be472569dc9e22c2d416267a42e363c9494",
         intel: "96688ba9f43e79e2fe3badf5e5bc1be472569dc9e22c2d416267a42e363c9494"

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
