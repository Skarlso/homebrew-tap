class AdventureVoter < Formula
  desc "Interactive presentation system where the audience votes on what happens next"
  homepage "https://github.com/Skarlso/adventure-voter"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.4/adventure_darwin_arm64.tar.gz"
      sha256 "5cf162e836fb38a3ee2632db23f04b74965071b595168ca26a7efd9429a2beac"
    else
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.4/adventure_darwin_amd64.tar.gz"
      sha256 "e2eb71595553814fa7a367b528cd86a21876cc3deb6d1d1bdd030580de645ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.4/adventure_linux_arm64.tar.gz"
        sha256 "664db631158c52d2629938094a2a4bd358d007419397ad6f0331166bb0cf5cfe"
      else
        url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.4/adventure_linux_armv7.tar.gz"
        sha256 "2b5ff2924285041344626842d38526deb62f0b2f6fb8c1b7a5fa3ceb1309b4a4"
      end
    else
      url "https://github.com/Skarlso/adventure-voter/releases/download/v0.0.4/adventure_linux_amd64.tar.gz"
      sha256 "997eaf69982d4362e112facd7baf80de70d80ffc629ddf7cd3bafa00d0e9af32"
    end
  end

  def install
    bin.install "adventure"
  end

  test do
    assert_match /0.0.4\n/, shell_output("#{bin}/adventure --version")
  end
end
