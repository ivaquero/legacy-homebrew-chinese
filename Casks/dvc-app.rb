cask "dvc-app" do
  version "2.38.1"
  sha256 "edafdf18b97adc756ab5726a12804ff67411a434417cdd43ce85cc1b344c62ec"

  url "https://dvc.org/download/osx/dvc-#{version}"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url "https://dvc.org/"
    regex(/href=.*?dvc-(\d+(?:\.\d+)+)/i)
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
