class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.ae82f77"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.ae82f77_darwin_arm64.tar.gz"
      sha256 "f76b97c656b8c8fd1366ec4f20cd0a267ccfe1fe03cf48dc661a1fd808204810"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.ae82f77_darwin_amd64.tar.gz"
      sha256 "335bbc0512791a8831055706ea7c9a13dee812ddba8b39f928053822a2d5d08d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.ae82f77_linux_arm64.tar.gz"
      sha256 "511f647c561f590d729a55ea369d3a91b202e1cb7b255575892e1859dc9c5dbb"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.ae82f77_linux_amd64.tar.gz"
      sha256 "ff007972eafd0016eaa9417620b3990ccc00d9794bc6aae61c8765130a490c82"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
