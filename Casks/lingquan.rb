cask "lingquan" do
  version "0.6.3"
  sha256 :no_check

  url arm   "https://updater-1305474371.cos.ap-guangzhou.myqcloud.com/download/%E9%9B%B6%E6%B3%89-#{version}-arm64.dmg",
      intel "https://updater-1305474371.cos.ap-guangzhou.myqcloud.com/download/x64/%E9%9B%B6%E6%B3%89-#{version}.dmg"
      verified:   "updater-1305474371.cos.ap-guangzhou.myqcloud.com"
  name "零泉"
  desc "零泉可以轻松管理“图片、视频、音频、字体、3D以及设计类源文件”等，各种文件，让创意工作更加简单，高效"
  homepage "https://lingquan.cool/"

  auto_updates true
  app "零泉.app"

  zap trash: [
    "~/Library/Application Support/lingquan",
    "~/Library/Saved Application State/com.musk.lingquan.savedState",
    "~/Library/Preferences/com.musk.lingquan.plist",
  ]
end
