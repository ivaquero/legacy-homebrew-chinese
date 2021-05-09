cask "i4tools" do
  version "1.11.05"
  sha256 :no_check

  url "https://url.i4.cn/fqIBBbaa"
  appcast "https://www.i4.cn/pro_pc.html",
          must_contain: version
  name "i4Tools"
  name "爱思助手"
  homepage "https://www.i4.cn/"
  
  pkg "i4tools.pkg"

  uninstall delete:  [
              "/Applications/爱思助手.app"
            ]

end
