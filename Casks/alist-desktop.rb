cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.22.1"
  sha256 arm:   "8412c7b23929e95253539c4d264e73864db3727d84e7e1c016868b5f8d7e8f62",
         intel: "69e8f1affbbd479847a0d169e23ed4be8051d1627e0067dd9fc1711f72401a6a"

  url "https://github.com/alist-org/desktop-release/releases/download/v#{version}/alist-desktop_#{version}_#{arch}.dmg",
      verified:   "github.com/alist-org/"
  name "AList-Desktop"
  desc "File list program that supports multiple storage, powered by Gin and Solidjs"
  homepage "https://alist.nn.ci/zh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "alist-desktop.app"

  zap trash: [
    "~/Library/Application Support/ci.nn.alist",
    "~/Library/Caches/ci.nn.alist",
    "~/Library/Saved Application State/ci.nn.alist.savedState",
    "~/Library/Webkit/ci.nn.alist",
  ]
end
