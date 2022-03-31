class Awstools < Formula
  desc "A few helpful AWS tools"
  homepage "https://github.com/sam701/awstools"
  url "https://github.com/sam701/awstools/releases/download/0.13.1/awstools_darwin_amd64"
  version "0.13.1"
  sha256 "6f3f0c6066d5a942df9ebc19d4b140f84e60b05773dbcfc166af48868e99c090"

  def install
    mv "awstools_darwin_amd64", "awstools"
    bin.install "awstools"
  end

  test do
    actual = pipe_output("#{bin}/awstools --version")
    expected = "awstools version 0.13.1\n"
    assert_equal expected, actual
  end
  
end
