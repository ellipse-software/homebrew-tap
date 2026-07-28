class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.4ea7e66"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4ea7e66_darwin_arm64.tar.gz"
      sha256 "be03057924a93c003673c901ee338c0eca77f914bb38752be8d2f63d0457b6ce"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4ea7e66_darwin_amd64.tar.gz"
      sha256 "a9b76f5b455dcedcdb510546a0441b62057a9c8450e10497c6a203aab7fed884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4ea7e66_linux_arm64.tar.gz"
      sha256 "750a31b8b6e591446f9c9fd4e7dcdd9771a87796767074207730de2d63420636"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4ea7e66_linux_amd64.tar.gz"
      sha256 "a836b8c8598fe6c9a7ba2c18fa2581fa625b3cbddf96db1e233d072806ac94b0"
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
