class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.1"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.1/bast_0.6.1_darwin_arm64.tar.gz"
      sha256 "b658b95ff4e3fac2a59b56d150c9dacd1d80756364fcb3120b3fa83cdf3acbea"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.1/bast_0.6.1_darwin_amd64.tar.gz"
      sha256 "656838ddb902b5a4567f05cca1f1ef299503fb8854a9d9d9482143865ffc4287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.1/bast_0.6.1_linux_arm64.tar.gz"
      sha256 "84b9cca8a414098d542fb2b08f0f69025eb2d6a77ef7da10fb17c89d0fe23e58"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.1/bast_0.6.1_linux_amd64.tar.gz"
      sha256 "be51bee098b03749eead967d2274cea605c230ee7173abc736ae405a87e509be"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
