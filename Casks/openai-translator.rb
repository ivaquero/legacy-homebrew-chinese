cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.55"
  sha256 arm:   "a214a4d0a095563c6cf7c325ef6aaf4f896f30bb4c0c00619a17542e905763eb",
         intel: "b13b6354dd74be2e2c23057c548b6275a5836f12323c4e1c217f7b9f44a5373b"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"

  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/yetone/openai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/openai-translator",
    "~/Library/Preferences/xyz.yetone.apps.plist",
  ]
end
