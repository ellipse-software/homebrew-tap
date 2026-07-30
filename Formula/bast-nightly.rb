class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260730.bfe8bac"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260730.bfe8bac/bast_nightly.20260730.bfe8bac_darwin_arm64.tar.gz"
      sha256 "177d4d519aff78c255ca776e1de731112776487c2d0322fef737853b16f2a912"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260730.bfe8bac/bast_nightly.20260730.bfe8bac_darwin_amd64.tar.gz"
      sha256 "7ea11f92316127a7cf25b1d233ef7f1fc0d48e34c9fe8eb28b9ab10ccad77ba3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260730.bfe8bac/bast_nightly.20260730.bfe8bac_linux_arm64.tar.gz"
      sha256 "5de4ef6d533be71c5fcb4df4c249b1c9005dce79e07fdb3ddbd4ad0ce934322f"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260730.bfe8bac/bast_nightly.20260730.bfe8bac_linux_amd64.tar.gz"
      sha256 "42a48bfd0c2df2f5574b84828c7d1f6d5e850f05bc57fe4a7302ee6551999200"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
