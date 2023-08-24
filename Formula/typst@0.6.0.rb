class TypstAT060 < Formula
  desc "Markup-based typesetting system"
  homepage "https://github.com/typst/typst"
  url "https://github.com/typst/typst/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "550fb66bb3405951dfd0a1736e9e17756e906e664f6f683eeb87d40643218846"
  license "Apache-2.0"
  revision 1

  arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"

  if OS.mac?
    url "https://github.com/typst/typst/releases/download/v#{version}/typst-#{arch}-apple-darwin.tar.xz"
    if Hardware::CPU.arm?
      sha256 "45da455b018097bc1da2e633a17d6b43440ad8453da4df4e2fc22448bb0da906"
    else
      sha256 "69e8f1affbbd479847a0d169e23ed4be8051d1627e0067dd9fc1711f72401a6a"
    end
  else
    url "https://github.com/typst/typst/releases/download/v#{version}/typst-#{arch}-unknown-linux-musl.tar.xz"
    if Hardware::CPU.arm?
      sha256 "5bb1ab8987a33be08ad07367d2e70ea4f18868ba4538a77019aba48e76ed7892"
    else
      sha256 "69e8f1affbbd479847a0d169e23ed4be8051d1627e0067dd9fc1711f72401a6a"
    end

  end

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    ENV["TYPST_VERSION"] = version.to_s
    system "cargo", "install", *std_cargo_args(path: "crates/typst-cli")
  end
end
