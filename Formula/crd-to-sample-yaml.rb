class CrdToSampleYaml < Formula
  desc "Generate a sample YAML file from a CRD and view it rendered on a nice website"
  homepage "https://github.com/Skarlso/crd-to-sample-yaml"
  version "2.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Skarlso/crd-to-sample-yaml/releases/download/v2.1.6/cty_darwin_arm64.tar.gz"
      sha256 "4e4c34a06f3800e4e69aa92d6f1839bd25b41561fae2ed54eac3312069cd02a6"
    else
      url "https://github.com/Skarlso/crd-to-sample-yaml/releases/download/v2.1.6/cty_darwin_amd64.tar.gz"
      sha256 "475f7c0bf2a1cfa3df52b802c355db2606b5d296fa03f35283f8d8922d37a503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Skarlso/crd-to-sample-yaml/releases/download/v2.1.6/cty_linux_arm64.tar.gz"
        sha256 "400800e30cbec8bfe0d3544392deabf8aa35d64bc284c70e93b158d1724c71f3"
      else
        url "https://github.com/Skarlso/crd-to-sample-yaml/releases/download/v2.1.6/cty_linux_armv7.tar.gz"
        sha256 "72f4e72a9f8628ac8a988c98ad78eded7431028109c7c47c6c4320829a5f6758"
      end
    else
      url "https://github.com/Skarlso/crd-to-sample-yaml/releases/download/v2.1.6/cty_linux_amd64.tar.gz"
      sha256 "a0279bb5439c97f3590d24cdd01f6bf0f4f6ca00aba917bdeb95c888fe6f8f93"
    end
  end

  def install
    bin.install "cty"
  end

  test do
    assert_match /2.1.6\n/, shell_output("#{bin}/cty --version")
  end
end
