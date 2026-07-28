class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.90fcf0d"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.90fcf0d_darwin_arm64.tar.gz"
      sha256 "86860f7de9066f69f20c095f8add7d8f8de352b572027ca21e953865da383465"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.90fcf0d_darwin_amd64.tar.gz"
      sha256 "77e4aa8a18c48afece43b655525ced4ac475cfa2661e45eac431942c1d5cc4f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.90fcf0d_linux_arm64.tar.gz"
      sha256 "1e99dd616ae0ccfd7e4fc53b4b5edd2fcc0f3230551d440f859f5a39de604df8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.90fcf0d_linux_amd64.tar.gz"
      sha256 "7103fc674152f7e654cc42657f7eba3ab7df26abf7bf07f3162365709bd70837"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
