class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260729.bc4f3db"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260729.bc4f3db_darwin_arm64.tar.gz"
      sha256 "73dc2fe9bd68272b07299a9d1f5ff24d2a35b32a4dc457b8fb8c4d02d6f8556b"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260729.bc4f3db_darwin_amd64.tar.gz"
      sha256 "95ef96cc34a76e0692e84a77a46eaf9b30dfb81fdf30826fa37393ae18ae2e7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260729.bc4f3db_linux_arm64.tar.gz"
      sha256 "942f7b836983117ec97fed6d5c641881f99c00e42563a7bbeb8b322bde7db4af"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260729.bc4f3db_linux_amd64.tar.gz"
      sha256 "870977e8da7b5b3e8bc7aec8948307e0eb5e0375a93d97e56112ada8b7bc82ee"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
