class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260726.7208035"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.7208035_darwin_arm64.tar.gz"
      sha256 "a47cf251b248ef4ad4621d4e0201207f810664f88b700800592147dbb3923d2b"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.7208035_darwin_amd64.tar.gz"
      sha256 "7b584e6a4897d24f257b728dfb4b2499e7a2de73f4a543c71f5340fa7ee4b940"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.7208035_linux_arm64.tar.gz"
      sha256 "9d958f832f8ff68277a828f2292a5af8912040c7924570b250b7eb41464ffdb8"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260726.7208035_linux_amd64.tar.gz"
      sha256 "2a72c2ff51bc6d1dc919e569cd15dc77064aa897da6ebc1ace2d98245f24bb26"
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
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
