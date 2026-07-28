class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.3b8f73f"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.3b8f73f_darwin_arm64.tar.gz"
      sha256 "4414aa9fd1fe9bab19618544b93c8269ece16a47044d9c77deeefc965ab821c7"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.3b8f73f_darwin_amd64.tar.gz"
      sha256 "4dc678b29ae68fc60700c09b63aa3026b474dccdc1394f61a4e9eeffe6bb886f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.3b8f73f_linux_arm64.tar.gz"
      sha256 "ef80f781afc1979d6b1955e87c5402194dc90bcf36f46b1af798ebd034ca9fd3"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.3b8f73f_linux_amd64.tar.gz"
      sha256 "c4ac20d462b4e80e498d7b25069880ed46b287e6d4e89a128d1dbda9399e0329"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
