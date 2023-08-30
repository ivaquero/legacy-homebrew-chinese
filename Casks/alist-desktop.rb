cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.26.0"
  sha256 arm:   "e013050efa5604971dbc380975e7143117e4ccaed1935d89232787ef92164123",
         intel: "d99f2b464a240a2e683858c6bbf2658ab82512fedaceeb6591c3685bff5cbcce"

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
