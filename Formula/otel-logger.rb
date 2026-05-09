class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.5.102.tar.gz"
  sha256 "b0be53eabf2e79e71d49fc452e56d7324aa49277f0954c9adb7a0290da9a8d0f"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.5.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "bc4f61ae49290c5b4d26d3dfd71e472222b7fbdcb6b5aedcb3fc3649b89fdb7a"
    sha256 cellar: :any_skip_relocation, sonoma: "e83c44c2c8d8305f63685c988a21801d50bca8b341b1f3eccdb6feb0d7e26b8d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2a558214447f8aa1083b862e1546cc2f068b9598e8aa4139eab92a890829d8af"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
