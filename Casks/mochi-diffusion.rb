cask "mochi-diffusion" do
  version "4.1.3"
  sha256 "199897a42e1339c99928c511e19e33ba88c63488b80cc327f861c65a07f3f168"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion on Mac natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Mochi Diffusion.app"

  zap trash: [
    "~/Library/HTTPStorages/com.joshua-park.Mochi-Diffusion",
    "~/Library/Preferences/com.joshua-park.Mochi-Diffusion.plist",
  ]
end
