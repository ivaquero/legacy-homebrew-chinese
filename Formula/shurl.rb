class Shurl < Formula
  desc "A SELF-built SHORT CHAIN SHORTCUT BASED ON YOURLS"
  homepage "https://github.com/Mrered/yourlsh"
  version "1.1.0"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  url "https://github.com/Mrered/yourlsh/releases/download/v#{version}/shurl.tar.gz"
  sha256 "d91647fa1de76329d49c5f99b69b3e3e145e01ccc7d634043f3da5114abbe729"

  def install
    bin.install "shurl"
  end
end
