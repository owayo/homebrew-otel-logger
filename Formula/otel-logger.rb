class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.7.100.tar.gz"
  sha256 "bd34ce58cdd915e92dec33da59ee5491da61295b6e2996334a4e59db42ffa184"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.7.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "36ff380b6462a807a4fe72c2b4dad2b93ed105ef0edd30b93671751737029dcb"
    sha256 cellar: :any_skip_relocation, sonoma: "78c87493763f78f58bcbea132b18549092ca6e8d56ffea47ac328e7cebfc12ea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "488a1d95ec1e099a450958b59b4ecac294932aa0d90cbced3bed08bdb5f8c126"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
