class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.7.1"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.1/bast_0.7.1_darwin_arm64.tar.gz"
      sha256 "1000d3fdce73e3f64e55b51142e3f7845b12eb4fee2e00dff7e1c5be15b419bd"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.1/bast_0.7.1_darwin_amd64.tar.gz"
      sha256 "d137010359722c0e31c422fd21fd812badcb8ede48b47be4d048bb63e21683fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.1/bast_0.7.1_linux_arm64.tar.gz"
      sha256 "f2cf8b40da0e265700511c3b1cd2fe0042583d3263047d8413bacca8f490acc6"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.1/bast_0.7.1_linux_amd64.tar.gz"
      sha256 "26203d4a8053b39824144b813eff949e86ee42b6c39bcd9459639cc011bbe2fb"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
