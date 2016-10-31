class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.9.3/awstools_darwin_amd64"
  version "0.9.3"
  sha256 "b61b8aaff1853cfc68b8b7d1949278089d076fa50ffde0784cc633b68fdcb993"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.9.3\n"
    assert_equal expected, actual
  end
  
end
