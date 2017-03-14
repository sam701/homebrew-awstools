class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.11.3/awstools_darwin_amd64"
  version "0.11.3"
  sha256 "b9da63b1a14e357f0ce1f6347e8afdd389ab3962dd83b593642f290e998150a4"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.11.3\n"
    assert_equal expected, actual
  end
  
end
