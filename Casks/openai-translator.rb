cask "openai-translator" do

  version "0.0.16"
  sha256 "40616fdd8c05eabea051b03de053fd20874cee700ff8466f6e6cd796057d89c1"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_x64.dmg"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI-Translator-#{version}-#{arch}-mac.zip"
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
