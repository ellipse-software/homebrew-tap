class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260801.b66da25"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.b66da25/bast_nightly.20260801.b66da25_darwin_arm64.tar.gz"
      sha256 "6c18ae1e9fd0cdd400999c300c71e385c3dadc913092298f6a96a75923b038fc"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.b66da25/bast_nightly.20260801.b66da25_darwin_amd64.tar.gz"
      sha256 "960891bb8d15a42043e1fd5ccb4055cb9e8fac87cace5f1c6f96543fd2ef8a19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.b66da25/bast_nightly.20260801.b66da25_linux_arm64.tar.gz"
      sha256 "c5bd5201461a669439b0b7aec978a9696155fecc6df83373cfa66cf1260ba54f"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.b66da25/bast_nightly.20260801.b66da25_linux_amd64.tar.gz"
      sha256 "6484469e863893ab9eb45fc1c078ba599f1b0f2c245abd79cac2cab2d520df8e"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
