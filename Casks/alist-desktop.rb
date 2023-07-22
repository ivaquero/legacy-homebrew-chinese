cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.23.0"
  sha256 arm:   "71eb56ef20085d2746f9d5e1936c5159d5827325b64ea1c12be1d56ff204998d",
         intel: "a9a9fb99f66d3d1c59ff4e2bf96c7a276eb5be57bfbc401cf9c581718a8da580"

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
