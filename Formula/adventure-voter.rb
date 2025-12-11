class AdventureVoter < Formula
  desc "Interactive presentation system where the audience votes on what happens next"
  homepage "https://github.com/Skarlso/adventure-voter"
  url "https://github.com/Skarlso/adventure-voter/archive/refs/tags/v1.0.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"adventure")
  end

  test do
    assert_match "Adventure server starting", shell_output("#{bin}/adventure --help 2>&1", 1)
  end
end
