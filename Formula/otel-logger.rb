class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.5.101.tar.gz"
  sha256 "9ebd9ce3682b37f9fa37c983d43635941455b7bfa4c8e8869feface69be8c213"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.5.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8cc2dc43a1a9eca4288fdd1c293396687d488d148c92ea0110dba1f22e1e57fd"
    sha256 cellar: :any_skip_relocation, sonoma: "d35611020aaab683da4886a2898a2e1a60d46d986265d005cb101dff9967b09c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c0f7aa9459486bd986172dbf5907f971812ec1ea066841139f6106dca4044687"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
