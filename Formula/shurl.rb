class Shurl < Formula
  desc "A SELF-built SHORT CHAIN SHORTCUT BASED ON YOURLS"
  homepage "https://github.com/Mrered/yourlsh"
  version "0.1.0"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  url "https://github.com/Mrered/yourlsh/releases/download/v#{version}/shurl.tar.gz"
  sha256 "728fd2f6905e733c8bc53ab99915131779662e1909663b3c5ccf54f48164307c"

  def install
    bin.install "shurl"
  end
end
