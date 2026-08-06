class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.8.0"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.0/bast_0.8.0_darwin_arm64.tar.gz"
      sha256 "ccf1c63904847e54f8a132da8132dcd852116c9e4c8100e842434eb001a87c85"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.0/bast_0.8.0_darwin_amd64.tar.gz"
      sha256 "f79b98a4441cb0852200ab27c99b8c0c958c46ab8dc671a8df38cde6a451925d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.0/bast_0.8.0_linux_arm64.tar.gz"
      sha256 "c20d6370604fab746b69750571aa71e0047607e2f8fd2b68bee9ccba7bf4bdd6"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.8.0/bast_0.8.0_linux_amd64.tar.gz"
      sha256 "b789d85ce6a4a4c4da55e873e17afc258fccd72d272a9d20fc7723a37961f4f9"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
