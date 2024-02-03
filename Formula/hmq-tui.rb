class HmqTui < Formula
  desc "Unofficial TUI for interacting with the HiveMQ REST API"
  homepage "https://github.com/gitseti/hmq-tui"
  url "https://github.com/gitseti/hmq-tui/archive/refs/tags/0.2.0.tar.gz"
  sha256 "abd69d3670777e006d5063d678bce4a355aae6c4fcdb1790714bc5e97c6d2306"
  license "MIT"

  bottle do
    root_url "https://github.com/gitseti/homebrew-tap/releases/download/hmq-tui-0.2.0"
    sha256 cellar: :any_skip_relocation, ventura: "e54c74bbffe00b69212d4281f65580410379cd5d7e44e645845774a66d2a55c3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "hmq-tui " + version.to_s, shell_output("#{bin}/hmq --version")
  end
end
