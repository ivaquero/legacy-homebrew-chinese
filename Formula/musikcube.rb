class Musikcube < Formula
  desc "Cross-platform, terminal-based music player"
  homepage "http://musikcube.com"
  url "https://github.com/clangen/musikcube/archive/0.99.0.tar.gz"
  sha256 "2d4295a272e816c6fd10c95aefb4210ec407dcfdfaeef77089842f67c968969c"
  license "BSD-3-Clause"

  livecheck do
    url "https://github.com/clangen/musikcube.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "ccache" => :build
  depends_on "cmake" => :build
  depends_on "ffmpeg"
  depends_on "gnutls"
  depends_on "lame"
  depends_on "libev"
  depends_on "libmicrohttpd"
  depends_on "libogg"
  depends_on "libopenmpt"
  depends_on "libvorbis"
  depends_on "ncurses"
  depends_on "openssl@1.1"
  depends_on "taglib"

  on_linux do
    depends_on "curl"
  end

  def install
    system "git", "clone", "--branch", "asio-1-24-0", "https://github.com/chriskohlhoff/asio/", "src/3rdparty/asio/"
    system "cmake", "-DCMAKE_BUILD_TYPE=Release", "-DHOMEBREW_PREFIX=#{HOMEBREW_PREFIX}",
"-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
    system "make"
    system "cmake", "."
    system "make", "install"

    musikcube_path = "#{HOMEBREW_PREFIX}/Cellar/musikcube/0.99.0/share/musikcube/musikcube"
    musikcubed_path = "#{HOMEBREW_PREFIX}/Cellar/musikcube/0.99.0/share/musikcube/musikcubed"

    system "install_name_tool -add_rpath \"@executable_path/\" #{musikcube_path}|| true"
    system "install_name_tool -add_rpath \"@executable_path/\" #{musikcubed_path}|| true"
  end
end
