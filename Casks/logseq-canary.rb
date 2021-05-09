cask "logseq-canary" do
  version "0.0.2"
  sha256 "1508ce0bc8dd4a98bd1d9eca72d12dec988eb4942c38ea56779d4de2cabcad12"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  name "logseq-canary"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  auto_updates true

  app "Logseq Canary.app"

  zap trash: [
    "~/Library/Application Support/Logseq-Canary",
    "~/Library/Logs/Logseq Canary",
    "~/Library/Logs/Logseq-Canary ",
    "~/Library/Preferences/com.electron.logseq-canary.plist",
    "~/Library/Saved Application State/com.electron.logseq-canary.savedState",
  ]
end
