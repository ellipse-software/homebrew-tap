class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260724.c85226b"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260724.c85226b_darwin_arm64.tar.gz"
      sha256 "1986b0be15bfffa51dc88abd1de348a2a19505df1f3afb8a58e037787075fb5f"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260724.c85226b_darwin_amd64.tar.gz"
      sha256 "85d253816ebe7d4270f5aa537806e9934401d3e41a5017f530d2735cf071f97a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260724.c85226b_linux_arm64.tar.gz"
      sha256 "fee0c4a227087180344d70e3cb70f383d4b6da909b099bc67173b45ecafd5e21"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260724.c85226b_linux_amd64.tar.gz"
      sha256 "9931390d110cdc9589e9ac90dcdd4cb242123eb0dfaaab8357fd0c0556aff2a4"
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
