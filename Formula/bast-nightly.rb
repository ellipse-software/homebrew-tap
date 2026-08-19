class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260819.208d070"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260819.208d070/bast_nightly.20260819.208d070_darwin_arm64.tar.gz"
      sha256 "72f2df15c28216eb9acb4f18b9f72ac1872092c828b84939a1ea38bc4141ba85"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260819.208d070/bast_nightly.20260819.208d070_darwin_amd64.tar.gz"
      sha256 "5af0c3e69a604f6e17febcad8ea137bdb52b152b1daec61aee612144acb40b0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260819.208d070/bast_nightly.20260819.208d070_linux_arm64.tar.gz"
      sha256 "94f6db1a59e832acfcf846b0a4399d3602ef6d67854f0d1b7a0d51149b8c5325"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260819.208d070/bast_nightly.20260819.208d070_linux_amd64.tar.gz"
      sha256 "e73bb48bb8b87d831c5a9c32976bb3749d0c413d928825ed95adbadbfd29d25b"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
