class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260727.5d213bd"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.5d213bd_darwin_arm64.tar.gz"
      sha256 "1dc07d1028ccf5aeecc14ae3112ff0d7444fff6b478fea857f8125b1235f76c9"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.5d213bd_darwin_amd64.tar.gz"
      sha256 "a53a1ffaffdd8fbd5650774a57251bb7620db8469c508ecff779b1121d8a5d8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.5d213bd_linux_arm64.tar.gz"
      sha256 "7df2dda1a19af9ccadffd7983f652ead552dc1d05891ce590df40d533876a1d8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.5d213bd_linux_amd64.tar.gz"
      sha256 "770ea4574697cc53ad84436bc564986f69919b638e90f26ea8f60915bb208371"
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
