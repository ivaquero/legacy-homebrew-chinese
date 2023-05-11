cask "dvc-app" do
  version "2.53.0"
  sha256 "2752ce623520a9ba418517e3fc0207b64e5bc8577bac5afcb21a5728a65a5fe5"

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
