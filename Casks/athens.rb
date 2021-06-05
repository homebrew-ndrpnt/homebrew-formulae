cask "athens" do
  version "1.0.0-beta.86"
  sha256 "c850d78d8c8c212b8b9f41e3f599e1e5b200fbc1c31ca1972021ec88aa9d5f15"

  url "https://github.com/athensresearch/athens/releases/download/v#{version}/Athens-#{version}.dmg"
  appcast "https://github.com/athensresearch/athens/releases.atom"
  name "athens"
  desc "Knowledge graph for research and notetaking"
  homepage "https://github.com/athensresearch/athens"

  app "Athens.app"
end
