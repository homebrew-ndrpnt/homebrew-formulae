class Zellij < Formula
  desc "Terminal workspace with batteries included"
  homepage "https://zellij.dev/"
  url "https://github.com/zellij-org/zellij/releases/download/v0.8.0/zellij-x86_64-apple-darwin.tar.gz"
  version "0.8.0"
  sha256 "a081e80830c250667ce47740f2647e550b06f8c28220294d250d5abb07ebf29a"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "zellij"
  end

  test do
    system "#{bin}/zellij", "-h"
  end
end
