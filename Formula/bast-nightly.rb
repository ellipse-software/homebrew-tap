class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.2e48d2a"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2e48d2a_darwin_arm64.tar.gz"
      sha256 "916bb64317365c8b65d8d519e7df4a48ac2416de271c94dd37bd3ea4ebbfe0ad"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2e48d2a_darwin_amd64.tar.gz"
      sha256 "abc3c1c541ef8919f7620561ea4c4b377f80ea08d608e7da13e223dcc6f08b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2e48d2a_linux_arm64.tar.gz"
      sha256 "d44eca6088f769d8cf1ca3abd66ce7f7e6748bba76b6d4708660b0f11d68c88b"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2e48d2a_linux_amd64.tar.gz"
      sha256 "0b735cfc16fe0aa147a30b90472b8894e75e0346564b5d30d7e4765931daab62"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
