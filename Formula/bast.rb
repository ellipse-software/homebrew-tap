class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.3"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.3/bast_0.6.3_darwin_arm64.tar.gz"
      sha256 "bc179b35ac63e75d9cec632927e1c02c786f31d20ab8eeab52f4b69193151706"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.3/bast_0.6.3_darwin_amd64.tar.gz"
      sha256 "011c3400e7ed70a3badbb49891d9c6d1c7d469b466b414a693788cb50b44f4da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.3/bast_0.6.3_linux_arm64.tar.gz"
      sha256 "d9fe5673b0459125d252fc39e72677f6bf72ad1563b87f0da8728622e9c1ad4c"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.3/bast_0.6.3_linux_amd64.tar.gz"
      sha256 "9031f0e4d21e73a90186215fd8e42991600f4666ae43640e67c4a06cb6b87009"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
