class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.7b4f20a"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.7b4f20a_darwin_arm64.tar.gz"
      sha256 "70a545932730c201f29dc690c9baf5f70c999aac894a732825da19ad879871ab"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.7b4f20a_darwin_amd64.tar.gz"
      sha256 "f8aa4344cff54a4cfcd5ddad4c7faae2fb76cd854a5fa5c9a2353828f69fa49e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.7b4f20a_linux_arm64.tar.gz"
      sha256 "a63e57099a0d78d3437f4ff3b6ef7019afc125823493c7dbabc9a18046bd4eec"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.7b4f20a_linux_amd64.tar.gz"
      sha256 "c91c4a53b5e053ed3857b8c2f681c020b6455928aac66d300bc06687d7a76664"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
