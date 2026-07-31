class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260731.743a626"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260731.743a626/bast_nightly.20260731.743a626_darwin_arm64.tar.gz"
      sha256 "5a58a6d485f864a3771b3e4fe786145b7b2a6ab5d64df111bd7ff8cc7c49a2a4"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260731.743a626/bast_nightly.20260731.743a626_darwin_amd64.tar.gz"
      sha256 "a571f0d3c748bcf6d26989a51a0577d5f48ae38da86e44f31a4dfdb7f68b8bb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260731.743a626/bast_nightly.20260731.743a626_linux_arm64.tar.gz"
      sha256 "373830a6b70734e2eaa3872474ef33b3aa5ceddc43210bd579450c6eb21110cb"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260731.743a626/bast_nightly.20260731.743a626_linux_amd64.tar.gz"
      sha256 "e9385a55c46f1b06588471c742f9b0e2b1b92e7fc97c8df3c8a4d9b2ee5485c4"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
