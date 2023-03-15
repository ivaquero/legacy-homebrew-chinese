cask "openai-translator" do
  arch arm: "aarch64", intel: "universal"

  version "0.0.23"
  sha256 arm:   "1dccf520d807e2eb6510e5c0f33f8d2dd11381143ea4b1ef5c0230d371c6dcd4",
         intel: "98d0cbd16797492af3b7e072870d4471a2fae7a915fd51fed76d4ead940fba93"

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
