cask "openai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.31"
  sha256 arm:   "7477ce162f266e48d5ac512bbb02ae9791d0f24b790d103981566c86a65ca826",
         intel: "0e974dfb3f212a0aaa5798f2daacbda2dd97105168d6acec257f375bc4027692"

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
