class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260727.a01cdce"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.a01cdce_darwin_arm64.tar.gz"
      sha256 "009299bf4e88e7abf125d0bbbe4156d845839cf4ed376d6ad4953f2d6ede9210"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.a01cdce_darwin_amd64.tar.gz"
      sha256 "f05362b215dc3ed77c7d0e7a8193c6e95f5fb3fd3be1dfa40ad41cdf5a9de2ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.a01cdce_linux_arm64.tar.gz"
      sha256 "17204bb55054ee6159f2237c4f77c9959bbd55dc616a06b994bed5c5961f0036"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.a01cdce_linux_amd64.tar.gz"
      sha256 "61a47d147949db95b8451a6b11e37e9c9e571ae9e39236c2f1a114bc57394c60"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    cd "bast_#{version}_#{os}_#{arch}" do
      bin.install "bast"
    end
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
