class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260730.66e2165"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260730.66e2165_darwin_arm64.tar.gz"
      sha256 "930f321dcbcb903be676b444fd031b4e78507498ef680fc97e2f9c6d10c6f721"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260730.66e2165_darwin_amd64.tar.gz"
      sha256 "1b21086d89ebd9f6376ec165c07677931538d53fce37374e41698c29dc7103f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260730.66e2165_linux_arm64.tar.gz"
      sha256 "8f8f3b76ea2fd710595d05b692536f9fafad6061f9df4132809dc873da4c0f6a"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260730.66e2165_linux_amd64.tar.gz"
      sha256 "962303b63ca77b38da9f509fadd553cb530c19cd22b1e2638513a5762ecadd31"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
