cask "logseq-canary" do
  version "0.0.3"
  sha256 "a5b2149cbbd364be6ec4b69b773be93c637e03783e257b4a4f0e3394e84b4611"

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
