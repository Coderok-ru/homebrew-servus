# Homebrew Cask для Servus (tap Coderok-ru/homebrew-servus). Обновляется release-workflow.
cask "servus" do
  version "1.0.0"
  sha256 "25f3763577639bd9afbffde89930dfe33f10434a2ab7943334629c5a6ee1380d"

  url "https://github.com/Coderok-ru/servus-site/releases/download/v#{version}/Servus-#{version}.dmg"
  name "Servus"
  desc "Server workbench: files, terminal, logs, deploys and sync for your servers"
  homepage "https://coderok-ru.github.io/servus-site/"

  livecheck do
    url "https://coderok-ru.github.io/servus-site/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia

  app "Servus.app"

  zap trash: [
    "~/Library/Application Support/Servus",
    "~/Library/Caches/com.coderok.servus",
    "~/Library/Preferences/com.coderok.servus.plist",
  ]
end
