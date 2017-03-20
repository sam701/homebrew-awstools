class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.12.0/awstools_darwin_amd64"
  version "0.12.0"
  sha256 "ab9c1909ccbcbdc8c94811ddc8e990c3f420fd9a184e23050d666b9972d48510"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.12.0\n"
    assert_equal expected, actual
  end
  
end
