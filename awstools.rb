class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.10.1/awstools_darwin_amd64"
  version "0.10.1"
  sha256 "1a03b9b5dcc2c7de1074cd3ca3181ee431c906cc6215c10b4d1e9ec58ece6ba3"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.10.1\n"
    assert_equal expected, actual
  end
  
end
