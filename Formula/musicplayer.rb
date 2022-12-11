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
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_#{arch}-apple-darwin.tar.gz"
    if Hardware::CPU.intel?
      sha256 "01ccd3f676e8f1073bfd26cdbd51dd4d9c6c6baa18942e7d73367bfff7119126"
    else
      sha256 "e78ea69bed947ac8fb66fffa713d036315ae1b086f3bcd35425c829e9f9e08dc"
    end
  else
    url "https://github.com/tsirysndr/music-player/releases/download/v0.2.0-alpha.7/music-player_v0.2.0-alpha.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "63377997ab8af0cb8c2b60b59b42c2c5539fe08cb9f985325fc058730da509dc"
  end

  def install
    bin.install "music-player"
  end
end
