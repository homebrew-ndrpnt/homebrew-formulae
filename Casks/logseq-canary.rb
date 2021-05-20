cask "logseq-canary" do
  version "0.0.4"
  sha256 "a2ff2dc866bc22f20714ee487b8d7fa8354e2b4bbeffbfd0b74a3d6003da9224"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  name "logseq-canary"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  app "Logseq Canary.app"

  zap trash: [
    "~/Library/Application Support/Logseq-Canary",
    "~/Library/Logs/Logseq Canary",
    "~/Library/Logs/Logseq-Canary ",
    "~/Library/Preferences/com.electron.logseq-canary.plist",
    "~/Library/Saved Application State/com.electron.logseq-canary.savedState",
  ]
end
