class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260726.1274bc6"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.1274bc6_darwin_arm64.tar.gz"
      sha256 "9298ce213e9de38e29cc87860733ebd425a623a9c2fba7bb5aa0c08aaac4ec8d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.1274bc6_darwin_amd64.tar.gz"
      sha256 "4ae2274aeea8c810e9a7c99124c4ecd05dd99612315898d0fd80f490822b81e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.1274bc6_linux_arm64.tar.gz"
      sha256 "c0ab9da43587f30de1006641dcd839ee23942a2d62417aa5c7d6bd68fc7f841c"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.1274bc6_linux_amd64.tar.gz"
      sha256 "a96baf9b6e511d069627f546ec68fbecd3bd129846b6defd2afc60d0b37b28e9"
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
