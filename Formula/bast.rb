class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.2"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.2/bast_0.6.2_darwin_arm64.tar.gz"
      sha256 "e4612d7598e2bd77d9d9a674e46814bc002632b819c0582aa6aa16ed8dc05d6e"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.2/bast_0.6.2_darwin_amd64.tar.gz"
      sha256 "473b949ec101e69e62c4cc23a69b36134786a7ebb33297763be18644f3de3bbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.2/bast_0.6.2_linux_arm64.tar.gz"
      sha256 "386c630dcafcf48561ffc65fe3c1e470b2d63d5ca606f8e496c15411f3bd12c1"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.2/bast_0.6.2_linux_amd64.tar.gz"
      sha256 "3889cc1a2ef9bd788ad18827c0ba2c17cfac83b6a4bbbd7c5ce4c541fb9bcd97"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
