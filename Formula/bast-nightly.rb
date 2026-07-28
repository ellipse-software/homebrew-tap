class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.f6a203e"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f6a203e_darwin_arm64.tar.gz"
      sha256 "813f398a029c061b54b89a7c5c4b0cd8225d6978f896d63707f2cfcf501ea7af"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f6a203e_darwin_amd64.tar.gz"
      sha256 "7a307c3817c3d9544c9171c7b9870ddd1d04273c69010a2f0815d67a3f262c53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f6a203e_linux_arm64.tar.gz"
      sha256 "88e1571dcf23550bf954c280aba3621ec05d4dda0eb6522267e88aa215504be8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f6a203e_linux_amd64.tar.gz"
      sha256 "29f19364758ef8a12528fed4a4a2f7ef6d8da04bbc271af39bebb65b9384aeeb"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
