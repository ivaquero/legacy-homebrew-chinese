cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.195.0.5"
  sha256 :no_check

  url "https://sourceforge.net/projects/cudatext/files/release/#{version.major_minor_patch}.0/cudatext-macos-cocoa-#{arch}-#{version}.dmg/download",
      verified: "sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/files/release/"
    regex(/title="(\d+(\.\d+){3})"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).lazy.map do |match|
        new_url = "https://sourceforge.net/projects/cudatext/files/release/#{match[0]}/"
        version_page = Homebrew::Livecheck::Strategy.page_content(new_url)

        next if version_page[:content].blank?

        versions = version_page[:content].scan(/(\d+(\.\d+)+)\.dmg/i).map(&:first)
        next if versions.blank?

        versions.max
      end.compact_blank.first
    end
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
