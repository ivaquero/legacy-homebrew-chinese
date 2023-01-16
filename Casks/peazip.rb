cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.0.0"
  sha256 arm:   "556db5cc95a229dbb16c9c29085e1978fbae2138c0ddb7f935a572047bd855e8",
         intel: "46c1e6663369b2f5facc905d55e1198f59ed2a80960bb751d7d305bdedd4e2b1"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"
  name "Peazip"
  desc "Free Zip/Unzip software and Rar file extractor"
  homepage "https://github.com/peazip/PeaZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "PeaZip.app"

  zap trash: [
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
