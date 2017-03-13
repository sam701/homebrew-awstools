class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.11.2/awstools_darwin_amd64"
  version "0.11.2"
  sha256 "852f72dd02875234b3030150a6669b80e64e121707671a093e2ffe26b6c19f83"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.11.2\n"
    assert_equal expected, actual
  end
  
end
