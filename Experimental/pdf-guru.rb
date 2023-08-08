cask "pdf-guru" do
  version "1.0.13"
  sha256 "1838b6de640f6aa5d3f86cee7107eea508014d371824f14934a7496269dba187"

  url "https://github.com/kevin2li/PDF-Guru/releases/download/v#{version}/pdf-guru-darwin-amd64-#{version}.zip"
  name "PDF Guru"
  desc "Multi-purpose PDF file processing tool with a nice UI"
  homepage "https://github.com/kevin2li/PDF-Guru/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "PDF Guru.app"

  zap trash: []
end
