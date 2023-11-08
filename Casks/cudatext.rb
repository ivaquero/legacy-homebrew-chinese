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
    url "https://sourceforge.net/projects/cudatext/files/release/"
    regex(/v?(\d+(?:\.\d+)+).+/i)
    strategy :page_match do |page, regex|
      page.scan(regex).lazy.map do |match|
        version_page = Homebrew::Livecheck::Strategy.page_content(url.sub("/?", "/#{match[0]}/?"))
        next if version_page[:content].blank?

        versions = version_page[:content].scan(/v?(\d+(?:\.\d+)+)\.dmg/i).map(&:first)
        next if versions.blank?

        versions
      end.compact_blank.first
    end
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
