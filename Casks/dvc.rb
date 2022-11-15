cask "dvc" do
  version "2.34.0"
  sha256 "c9cd5641af3bd6c841cb299b8752b119d9fc4e264b96645244ac8c4cfec821c8"

  url "https://dvc.org/download/osx/dvc-#{version}"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url "https://dvc.org/"
    regex(/href=.*?dvc-(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "dvc-#{version}.pkg"

  uninstall quit:    "com.iterative.dvc",
            pkgutil: "com.iterative.dvc"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
