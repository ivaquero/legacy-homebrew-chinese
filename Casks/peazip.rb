cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.1.0"
  sha256 arm:   "6bdb9c6f93f8b895cc810ddd4d77c7292f2e61364908fe1c4227917fd5a551f5",
         intel: "65f184f2a79be59096231b9f18daf4a22018c4f47f99c4b503278b86bb60af9a"

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
