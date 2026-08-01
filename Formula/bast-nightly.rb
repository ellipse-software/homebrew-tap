class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260801.30f41d9"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.30f41d9/bast_nightly.20260801.30f41d9_darwin_arm64.tar.gz"
      sha256 "f413a1f7ac45eb67550133b6228537799e7ec654d7f7745e54c08348f1cd16ca"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.30f41d9/bast_nightly.20260801.30f41d9_darwin_amd64.tar.gz"
      sha256 "2957566047dff15f143b6c0a008d31324182df69807834543d37820e975c77c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.30f41d9/bast_nightly.20260801.30f41d9_linux_arm64.tar.gz"
      sha256 "3e4cec154e88c0c5496ac7bdc2e16f72a1a564581465d018006853c536db3c1d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.30f41d9/bast_nightly.20260801.30f41d9_linux_amd64.tar.gz"
      sha256 "62d80ec94d9550c5245e4bbddda6e7853cca9848d2067736f9510dd514e9ddc1"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
