class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  url "https://github.com/ellipse-software/bast/archive/refs/tags/v0.10.2.tar.gz"
  sha256 "6c5f93702e91ca3f624a09901104bde4219af7b5b5f3547393e5a8f1cf844716"
  license "MIT"
  head "https://github.com/ellipse-software/bast.git", branch: "master"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build

  conflicts_with "bast-nightly", because: "both install a `bast` binary"

  def install
    ldflags = %W[
      -s -w
      -X main.version=v#{version}
    ]
    cd "apps/bast" do
      system "go", "build", *std_go_args(ldflags:)
    end
  end

  test do
    ENV["BAST_NO_TELEMETRY"] = "1"
    assert_match "bast v#{version}", shell_output("#{bin}/bast --version")
    assert_match "native SSH picker", shell_output("#{bin}/bast --help")
    output = shell_output("#{bin}/bast --json hosts list")
    assert_match '"ok":true', output
  end
end
