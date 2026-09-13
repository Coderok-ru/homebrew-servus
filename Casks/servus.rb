# Homebrew Cask для Servus (tap Coderok-ru/homebrew-servus). Обновляется release-workflow.
cask "servus" do
  version "1.2.0"
  sha256 "d672fceafceffc6e23c1f582f313bc3e6fef704ba326b6256c78fe35e36fbd19"

  url "https://github.com/Coderok-ru/servus-site/releases/download/v#{version}/Servus-#{version}.dmg"
  name "Servus"
  desc "Server workbench: files, terminal, logs, deploys and sync for your servers"
  homepage "https://coderok-ru.github.io/servus-site/"

  livecheck do
    url "https://coderok-ru.github.io/servus-site/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Servus.app"

  zap trash: [
    "~/Library/Application Support/Servus",
    "~/Library/Caches/com.coderok.servus",
    "~/Library/Preferences/com.coderok.servus.plist",
  ]
end
