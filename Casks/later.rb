cask "later" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/alyssaxuu/later/raw/master/Later.dmg",
      verified: "github.com/alyssaxuu/later/"
  name "Later"
  desc "A simple Mac app to clear and restore your workspace with ease"
  homepage "https://getlater.app/"

  app "Later.app"
end
