cask "octave-app" do
  version "6.2.0"
  sha256 "f847a22d386cbb357d996d8a67f03969f9a668d14f512b3890cdd18ec9a2a958"

  url "https://github.com/octave-app/octave-app/releases/download/v6.2.0/Octave-#{version}.dmg"
  name "Ocatave"
  desc "Octave.app distribution"
  homepage "https://github.com/octave-app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Octave-#{version}.app"

  zap trash: []
end
