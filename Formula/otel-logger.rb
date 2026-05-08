class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.5.100.tar.gz"
  sha256 "b0db1d05208a4c3bf201aa20609a571e6e1f160869e63c736bb5303af804aa66"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.5.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8ae46e512d86d35b626a70216715399ff819fdf347ba22bec74e950661d2af50"
    sha256 cellar: :any_skip_relocation, sonoma: "a7c487a02e5cbbdb161f675dc65f34f1398afe4ffc18d0e0fe29da67b3b90010"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "569d094cd5e85267566f26b3093b0f38e87eadca7a14261205719690a8d30fc7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
