cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.55"
  sha256 arm:   "2a75cc476e81d57906318ac8412ad66e289dbba75e5af78f3f03a5bee038f3d7",
         intel: "207dd4452a4673b7179bb365a45ea92a96b3da35f2231d0420cc2d47ff6843f7"

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
