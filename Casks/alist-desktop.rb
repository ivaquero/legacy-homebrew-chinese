cask "alist-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "3.24.0"
  sha256 arm:   "e45c06b6f5f6adc0e69964f6a884ccd9d61d180598284ebf4c34f9848cea0e15",
         intel: "e7f3b705eb3fa66263f21ce2af6c25edf4129b85044c5cf1954ab194d2828798"

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
