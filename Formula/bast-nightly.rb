class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260726.6d31288"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.6d31288_darwin_arm64.tar.gz"
      sha256 "76c2db034b76f40376dd516991a3bcf876f99cb20bfca778c0fc791f332e22db"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.6d31288_darwin_amd64.tar.gz"
      sha256 "25f553b2543b0337011d603af1c47988c093f1c58ba7501c633fad732156cf8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.6d31288_linux_arm64.tar.gz"
      sha256 "1babd78d5b185894494aa9da54dee91f08e9b3202754fa445d75c68e198719ae"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.6d31288_linux_amd64.tar.gz"
      sha256 "973498bbc4dc642822b064fee5a22b487790d32b84ca4365e91e1ba2ad78de9d"
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
