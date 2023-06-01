cask "alist-desktop" do
    version "3.18.0"
    sha256 "0dac04dbd120aa76393feb564075fb14d530e34031fd8a833ab56c0cac1dba6a"
  
    url "https://github.com/alist-org/desktop-release/releases/download/v#{version}/alist-desktop_#{version}_x64.dmg"
    name "AList-Desktop"
    desc "A file list program that supports multiple storage, powered by Gin and Solidjs."
    homepage "https://alist.nn.ci/zh/"
  
    livecheck do
        url :url
        strategy :github_latest
    end
  
    app "alist-desktop.app"
  
    zap trash: [
      "~/Library/Application Support/ci.nn.alist/",
      "~/Library/Caches/ci.nn.alist/",
      "~/Library/Saved Application State/ci.nn.alist.savedState/",
    ]
  end
  