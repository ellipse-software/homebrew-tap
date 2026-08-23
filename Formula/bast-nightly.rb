class BastNightly < Formula
  desc "Browse SSH hosts, manage keys, and connect from the terminal (nightly)"
  homepage "https://bast.sh"
  url "https://github.com/ellipse-software/bast/archive/208d07040fae687d13115abad045115f8ca3baa2.tar.gz"
  version "nightly.20260819.208d070"
  sha256 "e2d862563069b1a423ed12652be89992054e951ccf4b80318e86e28fb56261f5"
  license "MIT"

  depends_on "go" => :build

  conflicts_with "bast", because: "both install a `bast` binary"

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    cd "apps/bast" do
      system "go", "build", *std_go_args(ldflags:)
    end
  end

  test do
    ENV["BAST_NO_TELEMETRY"] = "1"
    assert_match "bast #{version}", shell_output("#{bin}/bast --version")
    assert_match "native SSH picker", shell_output("#{bin}/bast --help")
    output = shell_output("#{bin}/bast --json hosts list")
    assert_match '"ok":true', output
  end
end
