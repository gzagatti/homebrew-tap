class Potion < Formula
 desc "_why the lucky stiff's little language (the official repo... until _why returns)"
 homepage "http://perl11.org/potion"
 url "https://github.com/perl11/potion/releases/download/0.3/potion-0.3.1264-x86_64-apple-darwin14.tar.gz"
 sha256 "d68f55e301057bcf29f0f56ae314005617ac3bb937c7e706b80165edb8162cc4"

  def install
    prefix.install Dir["*"]
  end

end
