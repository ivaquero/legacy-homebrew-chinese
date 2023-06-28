class Shurl < Formula
  desc "A SELF-built SHORT CHAIN SHORTCUT BASED ON YOURLS"
  homepage "https://github.com/Mrered/yourlsh"
  version "1.0.0"
  license "MIT"
  version_scheme 1

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  url "https://github.com/Mrered/yourlsh/releases/download/v#{version}/shurl.tar.gz"
  sha256 "bfc60c36db29e5d84e11e8f3b80d77a86836a76219ffe69011bbec8e821b3abd"

  def install
    bin.install "shurl"
  end
end
