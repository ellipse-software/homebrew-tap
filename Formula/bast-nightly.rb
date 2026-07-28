class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  version "nightly.20260728.2195abb"
  license "MIT"

  conflicts_with "bast"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2195abb_darwin_arm64.tar.gz"
      sha256 "4dd52b3188f6eb21896c462da855c667b6040756694197eced91118a4574c589"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2195abb_darwin_amd64.tar.gz"
      sha256 "853e03d471a0e4c3efa251ec36546145dab41e1faec2a0caf47678156369ea9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2195abb_linux_arm64.tar.gz"
      sha256 "4b3a38c23f985bed47ae762996c4b6a929d2ee92c57f59571945724a0a89cc10"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/nightly/bast_nightly.20260728.2195abb_linux_amd64.tar.gz"
      sha256 "20debbe4f137d8d9065ad410b81237ffb98c741cd676c1fa1a1be3c4b28ff2b2"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
  end
end
