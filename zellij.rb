class Zellij < Formula
  desc "Terminal workspace with batteries included"
  homepage "https://zellij.dev/"
  url "https://github.com/zellij-org/zellij/releases/download/v0.7.0/zellij-x86_64-apple-darwin.tar.gz"
  version "0.7.0"
  sha256 "81b5ee9d4a415490aa265152111ccc7f5491cfe22c2b7cdf5842f01f2e7f77e7"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "zellij"
  end

  test do
    system "#{bin}/zellij", "-h"
  end
end
