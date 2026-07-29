class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.4"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.4/bast_0.6.4_darwin_arm64.tar.gz"
      sha256 "8e29c10e2bb3b2396f565f89645bc00471137135405b5b6e9a15fb72edcdaf7e"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.4/bast_0.6.4_darwin_amd64.tar.gz"
      sha256 "2a0b0bfb145dcfc71c9828f90e1e81725fed1b5b4ce94e757d3e2fed96247a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.4/bast_0.6.4_linux_arm64.tar.gz"
      sha256 "15f69f4250534934de0192857524447f2d14c9a677f08f11b41e12aa318f5b5f"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.4/bast_0.6.4_linux_amd64.tar.gz"
      sha256 "992bd6372910b109a17431810e64ca73be659f3f4b596220b11b66a6cfcae196"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
