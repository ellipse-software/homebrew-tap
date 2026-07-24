class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.4.1"
  license "MIT"
  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.1/bast_0.4.1_darwin_arm64.tar.gz"
      sha256 "be086828e5d709280975533b145ef3132421ead8716155aa8e4c4e6b3f66134c"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.1/bast_0.4.1_darwin_amd64.tar.gz"
      sha256 "3e8d1099b046303fae367d45de62e553770fc0f43d175be8fd14c9f126ae8b2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.1/bast_0.4.1_linux_arm64.tar.gz"
      sha256 "0c8d651fb34445e9070758e4d26616d0ab9e82518fac3a6bb9b601dc58b7d0db"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.1/bast_0.4.1_linux_amd64.tar.gz"
      sha256 "74ff97ade3e3231c5908cb52ef7a6392cf9f6918aa79b4786d505a4f51141049"
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
