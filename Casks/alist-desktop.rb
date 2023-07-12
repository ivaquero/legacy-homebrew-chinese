cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.20.2"
  sha256 arm:   "f519e9743ec7f1ebca6276920cf3c6ed63db1a7b925906b9c24bb6608e1b39ef",
         intel: "6545a7f6c5ae222952de6453620bc75127675cca08c30d206dcd1f5174a1f414"

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
