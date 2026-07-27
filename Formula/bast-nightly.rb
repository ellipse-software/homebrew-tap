class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260727.b76dd15"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.b76dd15_darwin_arm64.tar.gz"
      sha256 "3f4462992116e6376f6721fab25cd4ecdf62299da62d6027f9131134f6e55e39"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.b76dd15_darwin_amd64.tar.gz"
      sha256 "fc46354f223eea6db377032fdc67fab920eb091901da88b4f6cd56892c38f99d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.b76dd15_linux_arm64.tar.gz"
      sha256 "f4323ca18d9721dc93d6ad2e8be9e08d829f94162b88cacd85a13cb6f6935034"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260727.b76dd15_linux_amd64.tar.gz"
      sha256 "0e8cf5fe42ec44481d1cbcc8a7ef8a3c616933584cb1f9e8f5f9e2c3f23641c3"
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
