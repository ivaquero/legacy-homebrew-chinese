<<<<<<< HEAD
cask "dvc" do
    version "2.31.1"
    sha256 "16d24e2983c70480da37fea817c68455a8500ac86ead36395fb043994f778775"

    url "https://github.com/iterative/dvc/releases/download/#{version}/dvc-#{version}.pkg"
    name "dvc"
    desc "Open-source Version Control System for Machine Learning Projects"
    homepage "https://dvc.org/"

    livecheck do
        url :url
        strategy :github_latest
    end

    depends_on macos: ">= :mojave"

    pkg "dvc-#{version}.pkg"

    zap trash: [
        "~/Library/Application Support/dvc",
        "~/Library/Application Support/iterative"
    ]

end
||||||| 4cd065c
=======
cask "dvc" do
  version "2.31.1"
  sha256 "16d24e2983c70480da37fea817c68455a8500ac86ead36395fb043994f778775"

  url "https://github.com/iterative/dvc/releases/download/#{version}/dvc-#{version}.pkg"
  name "dvc"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://dvc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "dvc-#{version}.pkg"

  zap trash: [
    "~/Library/Application Support/dvc",
    "~/Library/Application Support/iterative",
  ]
end
>>>>>>> f8c820d3c9472c4f1e344c080a7f4a589a6e9164
