class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260801.f248f48"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.f248f48/bast_nightly.20260801.f248f48_darwin_arm64.tar.gz"
      sha256 "bae8636cd8d85027a240715a03c3bbe48b81bb42fe359b9fb3c38287ed4d772b"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.f248f48/bast_nightly.20260801.f248f48_darwin_amd64.tar.gz"
      sha256 "5b9ecea1dc3c2a89227f76c294d77477585dd9b75c9b7d634f0c9e3c32aa667e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.f248f48/bast_nightly.20260801.f248f48_linux_arm64.tar.gz"
      sha256 "7e7fb2054fdce6b35984a5ec031741ae692681231eaee5780a069fbf19af4484"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly.20260801.f248f48/bast_nightly.20260801.f248f48_linux_amd64.tar.gz"
      sha256 "3b52bdadd9bc8970c252727d84276562e7a6ba7bc16c25f1eafe421731d2de45"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
