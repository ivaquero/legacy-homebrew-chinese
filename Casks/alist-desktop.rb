cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.25.1"
  sha256 arm:   "a671ad2c70c448f07d8b875b258463849c4399de72876765e1a4f9ea5d9d7e41",
         intel: "55cea4d12b7e3db76badc8592a38e62f3b1a3963fb46f2e72ee40a899ec2479d"

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
