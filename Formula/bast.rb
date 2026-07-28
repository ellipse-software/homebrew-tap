class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.0"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.0/bast_0.6.0_darwin_arm64.tar.gz"
      sha256 "a6e71df9943669d4161a3cb5af261bef2a68ac70a87b12ae80faf2a94468dbaa"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.0/bast_0.6.0_darwin_amd64.tar.gz"
      sha256 "5462db36b68d7693f4ce14ca115c6718ddfcd541b554e71c50b25807dd2bfcdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.0/bast_0.6.0_linux_arm64.tar.gz"
      sha256 "9e2e1b832e65f3620233154381415449c69cac4fa37d202ab39d1aa6dc560b71"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.0/bast_0.6.0_linux_amd64.tar.gz"
      sha256 "74a3bf04c28f25a0f6ed332a68dc3a90cb47dbcf9a0f253062d346282d176394"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
