class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.9.2"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.2/bast_0.9.2_darwin_arm64.tar.gz"
      sha256 "8f3adc741ba5cbf9c6348d7bf258c2fdf4704b2ee789e3c168113da6dfa3f299"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.2/bast_0.9.2_darwin_amd64.tar.gz"
      sha256 "841ac8efab1010c2174afb5a5e667b9c0c604958c1850ee88dbe964ac9b75ad1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.2/bast_0.9.2_linux_arm64.tar.gz"
      sha256 "41377e173491e9090e63aae4a6d100c8c1933a591c5a1f24b63043023407e5be"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.2/bast_0.9.2_linux_amd64.tar.gz"
      sha256 "7a1c3b0fea8007358cb3654d0378499c38b6828c2cc3e1a94238afa91e929931"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
