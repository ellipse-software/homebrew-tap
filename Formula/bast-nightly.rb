class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.f86203b"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f86203b_darwin_arm64.tar.gz"
      sha256 "2e2cf7d6b920967c3f8bba5e3adeefbfdd550a444443468259efbe09d29b475e"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f86203b_darwin_amd64.tar.gz"
      sha256 "1cafd20944b59373e2f1cd9478176701181a3daa79756a1c5b24e1122f179ee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f86203b_linux_arm64.tar.gz"
      sha256 "27b8547ef96829d28dd1a4f07c0b3afbf81ccf000bf3b4109c2cdbeb8a880592"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.f86203b_linux_amd64.tar.gz"
      sha256 "322d70cc96a3a754b981bc1e4c8a95c22af5df145d459a17b2cd6d0777b2b566"
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
