class HmqTui < Formula
  desc "Unofficial TUI for interacting with the HiveMQ REST API"
  homepage "https://github.com/gitseti/hmq-tui"
  url "https://github.com/gitseti/hmq-tui/archive/refs/tags/0.2.0.tar.gz"
  sha256 "1abd69d3670777e006d5063d678bce4a355aae6c4fcdb1790714bc5e97c6d2306"
  license "MIT"

  bottle do
    root_url "https://github.com/gitseti/homebrew-tap/releases/download/hmq-tui-0.1.0"
    sha256 cellar: :any_skip_relocation, ventura: "22913fc91b77d3f7c12fd9f5356827e17d1f832cf316a0efb11f99b13c69a170"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "hmq-tui " + version.to_s, shell_output("#{bin}/hmq --version")
  end
end
