class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.9.0"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.0/bast_0.9.0_darwin_arm64.tar.gz"
      sha256 "e1dbfbf84c98812310643927b51834215a18a3e0df23f980d871225d49da013c"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.0/bast_0.9.0_darwin_amd64.tar.gz"
      sha256 "b9ce7987b44f89401285ad8a899e20b1b3b7a3350c0e3473a8385fc02bcaccce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.0/bast_0.9.0_linux_arm64.tar.gz"
      sha256 "cd6cf4f1d16ad1218795151bf47701ebb010d0ac765753b6e3a0c571b043b324"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.0/bast_0.9.0_linux_amd64.tar.gz"
      sha256 "8549a02fc316f2c0b1ded6d3aac54e9b4a841ba1e8ffacc9134440319f1aadb8"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
