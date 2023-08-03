cask "chatgpt" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "f870ba135ad990715474cbb038b5b38acb8d08640803e2c79c878e210f4800f6",
         intel: "474c6024ac1100512c242449da8d93b521334d0d03a9457c42446293a64eaff4"

  url "https://github.com/lencx/ChatGPT/releases/download/v#{version}/ChatGPT_#{version}_macos_#{arch}.dmg"
  name "ChatGPT"
  desc "Desktop wrapper for OpenAI ChatGPT"
  homepage "https://github.com/lencx/ChatGPT"

  app "ChatGPT.app"

  uninstall quit: "com.lencx.chatgpt"

  zap trash: [
    "~/.chatgpt",
    "~/Library/Caches/com.lencx.chatgpt",
    "~/Library/HTTPStorages/com.lencx.chatgpt.binarycookies",
    "~/Library/Preferences/com.lencx.chatgpt.plist",
    "~/Library/Saved Application State/com.lencx.chatgpt.savedState",
    "~/Library/WebKit/com.lencx.chatgpt",
  ]
end
