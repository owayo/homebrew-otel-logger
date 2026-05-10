class OtelLogger < Formula
  desc "OTLP receiver that logs Claude Code / Codex telemetry to stdout and JSONL"
  homepage "https://github.com/owayo/otel-logger"
  url "https://github.com/owayo/otel-logger/archive/refs/tags/v26.5.103.tar.gz"
  sha256 "b60062c7afd0f6b48bb73b35a05d2d205081eca5574f77934712303f1ec30419"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/otel-logger/releases/download/v26.5.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e78453432d7bce4dfafb66d59e5278fa6cf4df2b02f46a8f5abcfc5ba9cbda59"
    sha256 cellar: :any_skip_relocation, sonoma: "87c41afaf2081b07e0f9c75c6c5bf450d42042314a9a8493763feda60f8df53d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fd4b1cdfa649f410bab00b5c54239102ae4028cbd738bee82ae581784ad1044a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/otel-logger", "--version"
  end
end
