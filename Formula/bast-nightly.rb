class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.a382938"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.a382938_darwin_arm64.tar.gz"
      sha256 "80b2f2820466168a7f8f1c058c661e7ae4feee68c785142d837d826d4d34dad6"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.a382938_darwin_amd64.tar.gz"
      sha256 "5fb29f7eebc2d98f53ddb92d9b0131ba084171ac5af69dd80ac3c536b3f9aae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.a382938_linux_arm64.tar.gz"
      sha256 "316cba4b4ea10a1453a7124ff3985ea3f2d74a7a14340e407cfac3610f1386f0"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.a382938_linux_amd64.tar.gz"
      sha256 "bc7239c0cdd2492ab005e151d7f150b36e4e57ffd9969fd4658d038cb2e863c7"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
