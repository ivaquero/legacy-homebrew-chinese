cask "octave-app" do
    version "6.2.0"
    sha256 "c9cd5641af3bd6c841cb299b8752b119d9fc4e264b96645244ac8c4cfec821c8"

    url "https://github.com/octave-app/octave-app/releases/download/v6.2.0/Octave-#{version}.dmg"
    name "Ocatave"
    desc "The Octave.app distribution"
    homepage "https://github.com/octave-app/"

    livecheck do
        url :url
        strategy :github_latest
    end

    depends_on macos: ">= :mojave"

    app "Ocatave-#{version.major_minor}.app"

    zap trash: [
    ]
  end
