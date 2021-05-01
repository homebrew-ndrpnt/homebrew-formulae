cask "logseq-canary" do
  version "0.0.1"
  sha256 "0c333932320a9266d5ebd81dadd61c44e6e8c61c7bd218d18d455deea36f7557"

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
