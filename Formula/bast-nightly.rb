class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.388f429"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.388f429_darwin_arm64.tar.gz"
      sha256 "e5b7939a74893d10af13bb4a37b5e23e3a576009c50c5e67a8774dc1cd99d6dd"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.388f429_darwin_amd64.tar.gz"
      sha256 "5cc077deddd8d9ff64788d6c71952c2c33b372959d85e1ddd55405c0dbf0c4e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.388f429_linux_arm64.tar.gz"
      sha256 "7b6051c7e11187cdaef1b741a16d3451d590a0097d352f795428377b84ea89c8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.388f429_linux_amd64.tar.gz"
      sha256 "3cc45439a58ead4f0a582ea4d7875dce502f0354ba8953017fdaf6dde59d732c"
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
