class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.7.0"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.0/bast_0.7.0_darwin_arm64.tar.gz"
      sha256 "de5bf0a5dc3bd0e152c9f6906290e6009cfd7c4f00883cfcfc3bbaf17e427803"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.0/bast_0.7.0_darwin_amd64.tar.gz"
      sha256 "ee880695291390ffaa8fb75bd81d93192a008d355670e5b8794c0541bf5e3ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.0/bast_0.7.0_linux_arm64.tar.gz"
      sha256 "f20673e674fd34940d5e898d75427e469327c5e7ec5aeff9ea6fda72d538b18d"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.7.0/bast_0.7.0_linux_amd64.tar.gz"
      sha256 "04b5cdf625178ecdd0ea4e5737722277ea3ba173b800304fbc03c9a7203f1b17"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
