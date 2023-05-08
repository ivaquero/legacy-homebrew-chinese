class Vtm < Formula
  desc "Terminal multiplexer with window manager and session sharing"
  homepage "https://github.com/netxs-group/vtm"
  license "MIT"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  if OS.mac?
    url "https://github.com/netxs-group/vtm/releases/download/v0.9.9h/vtm_macos_any.tar.gz"
    sha256 "52e073854581def1acf722ba38c5d5aa17c523944241a7d90a33d2c7a0bf7e73"
  else
    url "https://github.com/netxs-group/vtm/releases/download/v0.9.9h/vtm_linux_amd64.tar.gz"
    sha256 "87ad6fdcc0281cbf7936d826b20a8ce42ad894ef3739b5df2ca6bcc20ec7a120"
  end

  def install
    bin.install "vtm"
  end
end
