class HmqTui < Formula
  desc "Unoffical TUI for interacting with the HiveMQ REST API"
  homepage "https://github.com/gitseti/hmq-tui"
  url "https://github.com/gitseti/hmq-tui/archive/refs/tags/0.0.1.tar.gz"
  sha256 "5788b6d5335055e8ae5b6719ce0b573106311eb8165941a22b07142e9da9c8c6"
  license "MIT License"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "hmq-tui " + version.to_s, shell_output("#{bin}/hmq --version")
  end

end