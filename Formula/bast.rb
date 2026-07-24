class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.0/bast_0.4.0_darwin_arm64.tar.gz"
      sha256 "95b942f9a2235e60f67a5cd1f68fd13ebfb75dc41983eb77e21dede04c3c2366"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.0/bast_0.4.0_darwin_amd64.tar.gz"
      sha256 "5b6f7c58ba6d18697ee7ba0bac07b2e4b8347018a9c0cfad37a90f03992cd71f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.0/bast_0.4.0_linux_arm64.tar.gz"
      sha256 "d5cda727ec73e07af4e0ac85fa80a343b78a7bf59ce5cd66114c012d65b0baca"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.4.0/bast_0.4.0_linux_amd64.tar.gz"
      sha256 "7538160606fd0d66e7ae0e546df136680fc0d4490b3a1113ab09308330189daa"
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
