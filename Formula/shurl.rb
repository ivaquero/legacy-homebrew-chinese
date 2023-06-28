class Shurl < Formula
  desc "A SELF-built SHORT CHAIN SHORTCUT BASED ON YOURLS"
  homepage "https://github.com/Mrered/yourlsh"
  version "0.2.0"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  url "https://github.com/Mrered/yourlsh/releases/download/v#{version}/shurl.tar.gz"
  sha256 "f8530a8159c6791dbede34822541ef9327e91a2c9bd0178540c9b1e3aa247db1"

  def install
    bin.install "shurl"
  end
end
