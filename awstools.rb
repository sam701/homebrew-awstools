class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.11.0/awstools_darwin_amd64"
  version "0.11.0"
  sha256 "a29cf26cf48b9330ddaeaed54615845fa00d878b205e164ba80f9758d2bc206a"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.11.0\n"
    assert_equal expected, actual
  end
  
end
