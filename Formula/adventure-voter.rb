class AdventureVoter < Formula
  desc "Interactive presentation system where the audience votes on what happens next"
  homepage "https://github.com/Skarlso/adventure-voter"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.3/adventure_darwin_arm64.tar.gz"
      sha256 "516681a06699b2f8f172aa55a21977da595536a01f22f9bd572c4b408f5ea2ab"
    else
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.3/adventure_darwin_amd64.tar.gz"
      sha256 "2dd5b44011ef4ea965a7b4c12a25e9c49bd40b6aa8f3ed866f5b65be28aec2a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.3/adventure_linux_arm64.tar.gz"
        sha256 "bdaed0359686594523e7c2461459acd0b488d152d6e65d35ab10bbb3871a28d1"
      else
        url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.3/adventure_linux_armv7.tar.gz"
        sha256 "e790d2c143fb597a30381fad9db12affc369e1476417e382a82b343779313109"
      end
    else
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.3/adventure_linux_amd64.tar.gz"
      sha256 "a3aa9d948ef060ca3753b68a52d3e98d51cce07608878da725bce778d2f44bb5"
    end
  end

  def install
    bin.install "adventure"
  end

  test do
    assert_match "version", shell_output("#{bin}/adventure --version")
  end
end
