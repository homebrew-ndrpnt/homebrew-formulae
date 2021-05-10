cask "logseq-canary" do
  version "0.0.2"
  sha256 "81306131aa5e1034fb7e282a99eba11f1e09a9a04f072e13cbdc7d3a5160fa42"

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
