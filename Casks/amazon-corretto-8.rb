cask "amazon-corretto-8" do
  arch arm: "aarch64", intel: "x64"

  version "8.362.08.1"
  sha256 arm:   "ebd9f67f474c7e8297990494bed18121546ad0ce52fcf643052c44a6ee96418f",
         intel: "8d4e90d25847e7ee6a3b62ca987b15299cdfc54cf177bec7a04710a2c95ff637"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg"
  name "amazon-corretto-8"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://github.com/corretto/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  zap trash: []
end
