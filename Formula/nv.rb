class Nv < Formula
  desc "Node version management"
  homepage "https://github.com/infinum/nv"
  url "https://github.com/infinum/nv/archive/v0.0.2.tar.gz"
  sha256 "d0d611f2df87c89ff1cab34a40bc2c56661aff91c05adc6b7d0e1ae861f60790"
  head "https://github.com/infinum/nv.git"

  def install
    bin.mkdir
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system bin/"nv", "ls"
  end
end
