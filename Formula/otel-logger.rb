class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.5.104.tar.gz"
  sha256 "8a6a2178b8598f98971be03d0b91b4b4e2b0bfc75de40e3d90d4fdf4d2085bc3"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.5.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fe577e544a0b1f21e85b65ec073e8c99a6434c9e7ad7a3dfad90ca34d9d105a7"
    sha256 cellar: :any_skip_relocation, sonoma: "065a53f52f22a369bdd380edf63dff287e4e2ff046dd2c0acf2f4e3d7316148d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "612d7aa9ae9af1fad6a4593e921ff4d7c1b62914bee973a9b393f3fa1886dcec"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
