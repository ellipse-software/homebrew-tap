class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.9.1"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.1/bast_0.9.1_darwin_arm64.tar.gz"
      sha256 "b13b57618c315f0c6b6090638cd4384d9147a3efb9487f9927195403ac2ce96d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.1/bast_0.9.1_darwin_amd64.tar.gz"
      sha256 "1722aeaf9e8b736971adf64360883f4f9aa71243efefab984c9d20e4ce10dd89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.1/bast_0.9.1_linux_arm64.tar.gz"
      sha256 "59f6f6b61d9e9041c81edfcef5f02c3b669407e58cff01b305ac9ca580863000"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.1/bast_0.9.1_linux_amd64.tar.gz"
      sha256 "3ff82714679eaab0705b0a86ddd3e04cea80f39c2170618f954297f4bcdd6fbe"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
