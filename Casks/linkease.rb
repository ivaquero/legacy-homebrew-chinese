cask "linkease" do
    version "1.1.9"
    sha256 "e020c81e4c75413a1f126f6b0f15457334af2114109397b6cd68526c3d35b3a1"
  
    url "https://fw8.koolcenter.com:5000/binary/LinkEase/Client/LinkEase.dmg"
    name "LinkEase"
    desc "一个可以随时随地远程连接个人 文件或设备的私有存储云"
    homepage "https://doc.linkease.com/"
  
    livecheck do
      url "https://doc.linkease.com/zh/guide/linkease/install/device/support.html"
      strategy :header_match
      regex(/v?(\d+(?:\.\d+)+)/i)
    end
  
    app "LinkEase.app"
  
    zap trash: [
      "~/Library/Caches/com.LinkEase.LinkEase",
      "~/Library/Preferences/com.LinkEase.LinkEase.plist",
    ]
  end
  