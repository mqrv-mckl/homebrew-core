class Ttyper < Formula
  desc "Terminal-based typing test."
  homepage "https://github.com/max-niederman/ttyper"
  url "https://github.com/max-niederman/ttyper/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "f7e4ff2f803483b17f35aa0c02977326a0546a95f5b465b4dd34ff17e45b4021"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_equal "ttyper #{version}", shell_output(bin/"ttyper --version").chomp
  end
end
