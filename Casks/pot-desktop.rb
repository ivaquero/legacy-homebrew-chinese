cask "pot-desktop" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "3e8e725d58ed1a3876ee20c943ff0cd49e1a38ee60a344127fae8e92220d71fa",
         intel: "17eb4113ca7293b12880afb30de4fd6c9801282f66c7ba885afb7e8f02167892"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform translation software"
  homepage "https://github.com/pot-app/pot-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "pot.app"

  zap trash: [
    "~/Library/Application Support/cn.pylogmon.pot/config.toml",
    "~/Library/Caches/cn.pylogmon.pot",
    "~/Library/Saved Application State/cn.pylogmon.pot.savedState",
    "~/Library/Webkit/cn.pylogmon.pot",
  ]
end
