cask "cudatext" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.195.0.5"
  sha256 :no_check

  url "https://sourceforge.net/projects/cudatext/files/release/#{version.major_minor_patch}.0/cudatext-macos-cocoa-#{arch}-#{version}.dmg/download",
      verified: "sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/rss?path=/release/#{version.major_minor_patch}.0"
    regex(/(\d+(\.\d+)+)\.dmg/i)
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
