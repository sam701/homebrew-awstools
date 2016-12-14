class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.10.0/awstools_darwin_amd64"
  version "0.10.0"
  sha256 "bb677c4675f2d7f57fba145362b68598e935533bb532a7027238a17676212e45"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.10.0\n"
    assert_equal expected, actual
  end
  
end
