class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.efb7f10"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.efb7f10_darwin_arm64.tar.gz"
      sha256 "bdde35e2657de669950d4639fe6a4c7f8a6970a96270a0e789751a75762d10d8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.efb7f10_darwin_amd64.tar.gz"
      sha256 "595c7a9720f6b4c58bf6eb77e7accbec4e117345c437cede47652c2497af468e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.efb7f10_linux_arm64.tar.gz"
      sha256 "9fabee83fa5c5850ad10c147b80820046e23f5264da06fd12ea7d06e09f805d1"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.efb7f10_linux_amd64.tar.gz"
      sha256 "0cbc9d266e577a3c607e24ad5deba38315e7d30365f31cd759bceb56af8fff02"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
