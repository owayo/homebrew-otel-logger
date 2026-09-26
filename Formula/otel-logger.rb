class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/otel-logger/releases/download/v26.9.100/otel-logger-aarch64-apple-darwin.tar.gz"
      sha256 "bbf8d4b2c577b658ba100488d05ba5418f60c8ec953401277e5917b04ccd89aa"
    else
      url "https://github.com/owayo/otel-logger/releases/download/v26.9.100/otel-logger-x86_64-apple-darwin.tar.gz"
      sha256 "0897c5fc57705d4096b3578889fcd1257d5ee6422cf5fe95d30391a43dd8f2d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/otel-logger/releases/download/v26.9.100/otel-logger-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ceda208918588b031bbf5d3f563701ba700c204f162aaeeb332cb0132b5a15bb"
    else
      url "https://github.com/owayo/otel-logger/releases/download/v26.9.100/otel-logger-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb457514e3484655b8d56b6590d2c635949f64080c64b5814dfcae432b806ed7"
    end
  end

  def install
    bin.install "otel-logger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/otel-logger --version")
  end
end
