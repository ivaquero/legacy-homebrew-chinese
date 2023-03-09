cask "openai-translator" do
  arch arm: "-arm64", intel: ""

  version "0.0.14"
  sha256 arm:   "5ea71354cbe6a3f6f568a192869262f78e4b1a11e4958888c0e4f2df514935dc",
         intel: "df11814c04bc84e350a30f05fd8ed9ae1d64cc2639373fdfde3a785256d56136"

  url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI-Translator-#{version}#{arch}-mac.zip"
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
