cask "messauto" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "0cb0641d0c6e2bcd0f947a50aa9fdee5439d7c544bb5a82912fd1d94b930deac",
         intel: "57440eba0fd8f174276acf0603088f2c987d5134dacc761a38fd3b38bc6a81b7"

  url "https://github.com/LeeeSe/MessAuto/releases/download/v#{version}/MessAuto_#{arch}.zip"
  name "MessAuto"
  desc "MacOS app that automatically extracts and pastes and enters SMS verification codes."
  homepage "https://github.com/LeeeSe/MessAuto"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "MessAuto.app"

  zap trash: [
    "~/Library/Preferences/com.doe.messauto.plist",
  ]
end
