class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260801.40081e9"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.40081e9/bast_nightly.20260801.40081e9_darwin_arm64.tar.gz"
      sha256 "0a817d4769255cdb4c61da320d469d55b94464b08220804ef200b817acb381f3"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.40081e9/bast_nightly.20260801.40081e9_darwin_amd64.tar.gz"
      sha256 "0f8fbc144224d4630cb80caf647412b5693c6ef7668ea425c8375094e61dcc17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.40081e9/bast_nightly.20260801.40081e9_linux_arm64.tar.gz"
      sha256 "0ed503a0efdee8fbc52d184491a840bc6d1c0c76457fe71f9eeba3b8f4e2f732"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.40081e9/bast_nightly.20260801.40081e9_linux_amd64.tar.gz"
      sha256 "e0c8ed7ea457fd072a3e69c32b32d0c48ef2bb9fa18cdd8158ca053611d5144b"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
