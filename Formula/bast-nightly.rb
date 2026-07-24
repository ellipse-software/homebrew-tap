class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "0.0.0-nightly"
  license "MIT"

  conflicts_with "bast"

  # Updated automatically by the bast nightly GitHub Actions workflow.
  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/placeholder"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    odie "bast-nightly has not been published yet"
  end

  test do
    assert_match "bast nightly.", shell_output("#{bin}/bast --version")
  end
end
