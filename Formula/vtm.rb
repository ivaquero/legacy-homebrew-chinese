class Vtm < Formula
  desc "Terminal multiplexer with window manager and session sharing"
  homepage "https://github.com/netxs-group/vtm"
  license "MIT"
  version "0.9.9l"

  if OS.mac?
    url "https://github.com/netxs-group/vtm/releases/download/v#{version}/vtm_macos_any.tar.gz"
    sha256 "1663bee2908add838bf20876ef9388fc5dcd2e9ff8349f3c127ba70d7678e3c3"
  else
    url "https://github.com/netxs-group/vtm/releases/download/v#{version}/vtm_linux_amd64.tar.gz"
    sha256 "87ad6fdcc0281cbf7936d826b20a8ce42ad894ef3739b5df2ca6bcc20ec7a120"
  end

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "vtm"
  end
end
