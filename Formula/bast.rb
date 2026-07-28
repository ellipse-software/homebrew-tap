class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.5.0"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.5.0/bast_0.5.0_darwin_arm64.tar.gz"
      sha256 "68a0ca89fbb5155bd76611b1bfd14f8ebe6c621b214b74c762eb75fb63490b4d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.5.0/bast_0.5.0_darwin_amd64.tar.gz"
      sha256 "469982e9bdddd2a291badee547e87602d0274f17f523e95c9ef70e455b4c8ab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.5.0/bast_0.5.0_linux_arm64.tar.gz"
      sha256 "a96597c12ba754f60e70499262969ad9882c503bea122787f41c6718b7f7e5d9"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.5.0/bast_0.5.0_linux_amd64.tar.gz"
      sha256 "4cff13dc8e92b18e213ddc5376380734954b50e3ef11fb1feef01000d23e0a5e"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
