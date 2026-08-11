class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.8.1"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.1/bast_0.8.1_darwin_arm64.tar.gz"
      sha256 "ac0323070283265b0763be973c2d3a5ac5fa8b5d6cb39e96472febaf6176406d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.1/bast_0.8.1_darwin_amd64.tar.gz"
      sha256 "7c209f8b43f4f7226f1978886783694b57006e9333967e1d931fd2df39682190"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.1/bast_0.8.1_linux_arm64.tar.gz"
      sha256 "745caf882aaa94be6a1927d842b4966c6fa413e0cb0c39334d93be20f1defe54"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.1/bast_0.8.1_linux_amd64.tar.gz"
      sha256 "3284a314575f914b06561a94e11db67ca9516c927553aecb0844fadf8a0e4e6a"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
