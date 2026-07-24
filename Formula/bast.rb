class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.1/bast_0.3.1_darwin_arm64.tar.gz"
      sha256 "f35d9a21ee7549389c989fa6b2a9e2f446f25403095acad79b822f51e958fbc7"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.1/bast_0.3.1_darwin_amd64.tar.gz"
      sha256 "a3125e2296919ab5917c623e14597599e8147aed199c3c4ed62e063e33a46347"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.1/bast_0.3.1_linux_arm64.tar.gz"
      sha256 "86cd385c0196513c1df89d2415d0fe5943f267b83f8a0347a9ab545e0ade772d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.3.1/bast_0.3.1_linux_amd64.tar.gz"
      sha256 "aa0d38df53104de2a138c13b423a8d7864a814353e287383fbab67b9ec593495"
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
