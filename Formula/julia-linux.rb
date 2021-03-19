class JuliaLinux < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "1.5.4"

  option "with-mirror-bfsu", "Download from https://mirrors.bfsu.edu.cn, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "mirror-bfsu"
        url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/x64/#{version.major_minor}/julia-#{version}-linux-x86_64.tar.gz"
    else
        url "https://julialang-s3.julialang.org/bin/linux/x64/#{version.major_minor}/julia-#{version}-linux-x86_64.tar.gz"
    end

    sha256 "80dec351d1a593e8ad152636971a48d0c81bfcfab92c87f3604663616f1e8bc5"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
