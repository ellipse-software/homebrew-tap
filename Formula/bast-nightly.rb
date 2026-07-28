class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.4628b3c"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4628b3c_darwin_arm64.tar.gz"
      sha256 "1a5a61c59533e88827f981da3a92bfbaf5f471bee0e544d9f3ca1b07103fc03e"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4628b3c_darwin_amd64.tar.gz"
      sha256 "de11c5c4c0d39569880e82a092b225d05aa1689b9767d1e7506ee2ccdf28dd62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4628b3c_linux_arm64.tar.gz"
      sha256 "ab4be393077779621c253a90eb6b4a1d6963b9813ae6d0a178ede3ffa3053814"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.4628b3c_linux_amd64.tar.gz"
      sha256 "089a73b065d067ec82e1ad52266c8331f2f0a7dd16ddc7a7a76abf171cd1d27e"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
