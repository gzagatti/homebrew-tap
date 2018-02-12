# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Potion < Formula
 desc "_why the lucky stiff's little language (the official repo... until _why returns)"
 homepage "http://perl11.org/potion"
 url "https://github.com/perl11/potion.git", :tag => "v0.3"

  def install
    system "./configure", "PREFIX=#{prefix}"
    system "make"
    system "make install BINDIST='pkg/${PKGBIN}.tar.gz' SUDO="
  end

end
