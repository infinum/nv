class Nv < Formula
  desc "Node version management"
  homepage "https://github.com/infinum/nv"
  url "https://github.com/infinum/nv/archive/v0.0.1.tar.gz"
  sha256 "c9fb26910909afbc79e85b68ef00080134b9e9c4ac3c2d875354264219e052d5"
  head "https://github.com/infinum/nv.git"

  def install
    bin.mkdir
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system bin/"nv", "ls"
  end
end
