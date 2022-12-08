cask "pareto-security" do
  version "1.7.36"
  sha256 "b212b1e03fcc6953c04b272f4bad435935d3dc9df24a49720308db070ea03193"

  url "https://github.com/ParetoSecurity/pareto-mac/releases/download/#{version}/ParetoSecurity.dmg",
      verified:   "github.com/ParetoSecurity/",
      user_agent: :fake
  name "Pareto Security"
  desc "Automatically audit your computer for basic security hygiene"
  homepage "https://paretosecurity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Pareto Security.app"
end
