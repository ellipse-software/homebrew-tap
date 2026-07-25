class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260725.bbe95c1"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260725.bbe95c1_darwin_arm64.tar.gz"
      sha256 "b6406537ac5f1ae1b3401500717162a39548a4e52c420bc21ccfb083ebe479f3"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260725.bbe95c1_darwin_amd64.tar.gz"
      sha256 "1738f86d028ffc78e90f645f3abc9b1c0c97ddc635b7e530be9a8966aff65da0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260725.bbe95c1_linux_arm64.tar.gz"
      sha256 "2a0c836a6f09507065ef69f8c836944f6fd6174a3cef4040558a478387bbe2dd"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260725.bbe95c1_linux_amd64.tar.gz"
      sha256 "beaa8c96dc7768245b067e554375e94f18ef9b79f858552888b193d6f1913dfe"
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
