cask "multrin" do
  version "1.3.0"
  sha256 "ece7c72fcb0ddaf839932032b910b990da339dc4fc7e7f2f8eac96ce79813925"

  url "https://github.com/sentialx/multrin/releases/download/v#{version}/Multrin-#{version}.dmg"
  appcast "https://github.com/xiandanin/magnetW/releases.atom"
  name "Multrin"
  desc "Organize apps windows in tabs like in abandoned Windows Sets and more"
  homepage "https://github.com/sentialx/multrin/"

  depends_on macos: ">= :sierra"

  app "Multrin.app"
end
