class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.2.5/bast_0.2.5_darwin_arm64.tar.gz"
      sha256 "c2a7ea21e387d788e9de146716a8c074d6a36ab9f87b3c216bf8ef1114268d76"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.2.5/bast_0.2.5_darwin_amd64.tar.gz"
      sha256 "7e22d6c9c02fe0f7d35a594b803efd416d1a1bd6b2c80bf4af196aa3ce03c874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.2.5/bast_0.2.5_linux_arm64.tar.gz"
      sha256 "97d4bcb430ca83ec53f5ca56cfa69652395b2540e079211b0014b8fa991e409f"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.2.5/bast_0.2.5_linux_amd64.tar.gz"
      sha256 "521ce077bf1dcfcea9b5f6559a3d48d6d1f65bd414068593f44556c8c60c20da"
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
