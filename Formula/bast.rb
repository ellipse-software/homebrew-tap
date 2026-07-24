class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.0/bast_0.3.0_darwin_arm64.tar.gz"
      sha256 "a5093e05688d5317405f90a4bdccc974bfdb2f19d89b316d91b5f2dc24836e93"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.0/bast_0.3.0_darwin_amd64.tar.gz"
      sha256 "0a448e88a017446b011630c3df778044e766d7afc2d5527ff79d41c3941135cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.0/bast_0.3.0_linux_arm64.tar.gz"
      sha256 "fc1a66c2c3c725e03e422fe654ae88256141009a1c48c390baff2a6429147f29"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.0/bast_0.3.0_linux_amd64.tar.gz"
      sha256 "78b2d65f8283e8bff8868d2f0c13125631270da6dc8aa0ee16fa7c6958fa618c"
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
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
