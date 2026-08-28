class Bast < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal"
  homepage "https://bast.sh"
  url "https://github.com/ellipse-software/bast/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "75b9bf844d7c2f8d3cab24a9abb73539af77d38a16c85b80f17ca251e5e83875"
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
