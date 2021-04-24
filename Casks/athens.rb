cask "athens" do
  version "1.0.0-beta.76"
  sha256 "8f136e804e157ee074cf055fe7587dd896aec92d4bb0351239458c341c2624c3"

  url "https://github.com/athensresearch/athens/releases/download/v#{version}/Athens-#{version}.dmg"
  appcast "https://github.com/athensresearch/athens/releases.atom"
  name "athens"
  desc "Knowledge graph for research and notetaking"
  homepage "https://github.com/athensresearch/athens"

  app "Athens.app"
end
