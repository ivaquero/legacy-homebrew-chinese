class JuliaLinux < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "1.6.0"

  option "with-default", "Download from https://julialang.org, or will use https://mirrors.bfsu.edu.cn for China mainland users."

    if build.with? "default"
        url "https://julialang-s3.julialang.org/bin/linux/x64/#{version.major_minor}/julia-#{version}-linux-x86_64.tar.gz"
    else
        url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/x64/#{version.major_minor}/julia-#{version}-linux-x86_64.tar.gz"
    end

    sha256 "463b71dc70ca7094c0e0fd6d55d130051a7901e8dec5eb44d6002c57d1bd8585"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
