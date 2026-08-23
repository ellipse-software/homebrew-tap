class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.9.3"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.3/bast_0.9.3_darwin_arm64.tar.gz"
      sha256 "8a3c67ff8419c20160c17b2f90772bde1b78ef233d942d78de464a1ec3940fb8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.3/bast_0.9.3_darwin_amd64.tar.gz"
      sha256 "57ed767f3c73f18bd9d637e4339d22131bab2c5ad4ffd77ffd4c333c84252f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.3/bast_0.9.3_linux_arm64.tar.gz"
      sha256 "8dbe3864aedcbfbaadd6c0bffb6da7073350fa753944aa0665cd80cd7117b4a7"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.9.3/bast_0.9.3_linux_amd64.tar.gz"
      sha256 "143de5d733b034a9660be4f94385de50119d79913e7df3d5541ce1c6542ba667"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
