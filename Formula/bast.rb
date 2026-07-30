class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  version "0.6.5"
  license "MIT"

  conflicts_with "bast-nightly"

  on_macos do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.5/bast_0.6.5_darwin_arm64.tar.gz"
      sha256 "e2568230a077434c2ffe6cea89f208f7fafc29528d9ebcdaa2f2cd6ec708fc30"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.5/bast_0.6.5_darwin_amd64.tar.gz"
      sha256 "6503cf53ea0adfb781ca3b0748b657ee21dd478bd6f8e511112242e8cd49527b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.5/bast_0.6.5_linux_arm64.tar.gz"
      sha256 "156fe7f2b99c1073598f6a8c2a16cc56364bbdf5c39c121b350ebd7fd92bfb09"
    end
    on_intel do
      url "https://github.com/ellipse-software/bast/releases/download/v0.6.5/bast_0.6.5_linux_amd64.tar.gz"
      sha256 "cf27c272609b4923251c5863d8449f28a2746221725258179a8cc3a6ad028ec8"
    end
  end

  def install
    bin.install "bast"
  end

  test do
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
  end
end
