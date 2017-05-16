class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.13.0/awstools_darwin_amd64"
  version "0.13.0"
  sha256 "482f79b702a8a677cf13ba7f8dc98aa8ac3a64b12cfb295ad44a1b4688f6cbe8"

  bottle :unneeded

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.13.0\n"
    assert_equal expected, actual
  end
  
end
