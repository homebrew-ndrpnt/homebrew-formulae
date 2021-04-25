class Zellij < Formula
  desc "A terminal workspace with batteries included"
  homepage "https://zellij.dev/"
  url "https://github.com/zellij-org/zellij/releases/download/v0.5.1/zellij-macos-x86_64.tar.gz"
  sha256 "073ff0ba557634891137e147f8d40a11a0fe99714cfd5eae2993d4aff9118cc8"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "zellij"
  end

  test do
    system "#{bin}/zellij", "-h"
  end
end
