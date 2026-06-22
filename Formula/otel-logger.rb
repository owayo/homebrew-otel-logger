class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.6.101.tar.gz"
  sha256 "c1d3f16da74e55d83fd91e8f74dfed59ec22c54c2a174e23f106cec960e74b37"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.6.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b8982e3152f8367e152ef12c0dd5bf9b06f72f77a51025bb7f5c79f24c234fd6"
    sha256 cellar: :any_skip_relocation, sonoma: "2255e0c5362b0543ae80f229e1c482656b02147f9ce785781d31a5639cb89170"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a1c5821fbf1ad809d954084afe3703c700eae8f4d5cbb622f7e1add4862b560c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
