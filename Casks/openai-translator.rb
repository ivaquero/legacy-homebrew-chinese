cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.26"
  sha256 arm:   "1dccf520d807e2eb6510e5c0f33f8d2dd11381143ea4b1ef5c0230d371c6dcd4",
         intel: "2c4c058f7c85b5bbf9324e46fac4dd8134687a824afb0139a8a64f06b4a8549a"

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
