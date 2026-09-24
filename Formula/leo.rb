class Leo < Formula
  desc "Personal, extensible task-runner CLI with a JSON object store"
  homepage "https://github.com/StealthFactory/leo"
  url "https://github.com/StealthFactory/leo/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "5ffb97151223ed2f3396cb62359e9edaa72d505c523042912bb8e0f59a338927"
  license "MIT"
  head "https://github.com/StealthFactory/leo.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leo version")

    ENV["XDG_CONFIG_HOME"] = testpath/"config"
    system bin/"leo", "store", "set", "answer", "42"
    assert_equal "number\n", shell_output("#{bin}/leo store type answer")
    assert_equal "42\n", shell_output("#{bin}/leo store get answer")
  end
end
