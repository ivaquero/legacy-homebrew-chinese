cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.28.0"
  sha256 arm:   "57fea445a5005a340986929ca705b67e931b6123fbc24d9a234b6fbc097f20dc",
         intel: "86d9fb387b344c496fb69e4ba8438d88b92af6ab7c77552baebc08a78f2a0d05"

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
