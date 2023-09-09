cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.82"
  sha256 arm:   "577f77e66fb97518e582604f1716c1f4032bf74a9b945c9d9ab30283a1a156d4",
         intel: "c2be9a24d4edd02c7cd38793c7c0d6428c025e56da8810d57205802e9f5013d1"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"

  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/yetone/openai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/openai-translator",
    "~/Library/Preferences/xyz.yetone.apps.plist",
  ]
end
