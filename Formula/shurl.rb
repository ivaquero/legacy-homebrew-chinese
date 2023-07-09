class Shurl < Formula
  desc "A SELF-built SHORT CHAIN SHORTCUT BASED ON YOURLS"
  homepage "https://github.com/Mrered/yourlsh"
  version "2.0.0"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  url "https://github.com/Mrered/yourlsh/releases/download/v#{version}/shurl.tar.gz"
  sha256 "ae374314f6e87415a008cb035237ba8fef3207bd240de70e783e9619a829227f"

  def install
    bin.install "shurl"
  end
end
