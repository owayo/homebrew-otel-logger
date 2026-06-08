class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.6.100.tar.gz"
  sha256 "8b5a990ebb7d57976048a1924731fb829f1f7d5a7fadb81115e1865f941e0ae5"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.6.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7dbc420423d4fe5f5a779a854a9ff0055670f131432e3240e677fbf026196cc9"
    sha256 cellar: :any_skip_relocation, sonoma: "11552f1f9e4480599937a9d54da3cb971476064add995082c00607a26642f85b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9f3a3be959695283703acb133ace341f300ad9d0b5916bd6e5c30e0bbeb7cf57"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
