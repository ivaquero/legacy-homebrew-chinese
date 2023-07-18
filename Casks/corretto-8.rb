cask "corretto-8" do
  arch arm: "aarch64", intel: "x64"

  version "8.372.07.1"
  sha256 arm:   "4d3be49141f4bf757fa152f20064839249fc86bd17e302d828ec10f868ea4e08",
         intel: "72a96602c3ed21c0362a45816be41ebdb804e10fcb4ce443044e0644d08ab8f4"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "amazon-corretto-8"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://github.com/corretto/corretto-8"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  zap trash: []
end
