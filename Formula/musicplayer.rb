class Musicplayer < Formula
  desc "Extensible music server written in Rust"
  homepage "https://github.com/tsirysndr/music-player"
  license "MIT"

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"

  if OS.mac?
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_#{arch}-apple-darwin.tar.gz"
    if Hardware::CPU.intel?
      sha256 "d3c405a8dbc2b1890d1de9b723a315d0adecedc75d993d623935fca058a77bff"
    else
      sha256 "29c77237cd6f664b5a1cafce0d165e80c65d06d68c8727ddf5ef76b14dde975f"
    end
  else
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.12/music-player_v0.2.0-alpha.12_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2c4c1eec31ed53fc6e9ec6e598f89173fc2d1adaf323b9c1f77be5be3e9cee6f"
  end

  def install
    bin.install "music-player"
  end
end
