cask "hasleo-ntfs" do
  version "4.6"
  sha256 "dc71d7cb6f50a41f83384fe088ece7e2e587a0eb3fe38b355cce904a17a63025"

  url "https://www.easyuefi.com/ntfs-for-mac/downloads/HasleoNTFS4Mac.pkg"
  name "Hasleo NTFS For Mac"
  desc "Easily and Securely Read & Write NTFS Drives in Mac"
  homepage "https://www.easyuefi.com/"

  livecheck do
    url "https://www.easyuefi.com/ntfs-for-mac/tech-spec.html"
    regex(/href=.*?Version\s(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "HasleoNTFS4Mac.pkg"

  zap trash: [
  ]
end
