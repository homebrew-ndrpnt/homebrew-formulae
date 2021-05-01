cask "athens" do
  version "1.0.0-beta.78"
  sha256 "64a69c90d65a8042be4c0972206f77cc77f331df13743dc15a4df9f1e9ec032d"

  url "https://github.com/athensresearch/athens/releases/download/v#{version}/Athens-#{version}.dmg"
  appcast "https://github.com/athensresearch/athens/releases.atom"
  name "athens"
  desc "Knowledge graph for research and notetaking"
  homepage "https://github.com/athensresearch/athens"

  app "Athens.app"
end
