cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.27.0"
  sha256 arm:   "de50ba7194928ef3f9570e90a5d148bdaa11b7b0a12cdeefa99311dd261a185e",
         intel: "b86b9d6101d53f271a5871836a8ceefdbf1b916e22c1e39fd6514159b2d2e40d"

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
