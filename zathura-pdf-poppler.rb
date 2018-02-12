# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class ZathuraPdfPoppler < Formula
  desc "Adds PDF support to zathura by using the poppler rendering engine."
  homepage "https://pwmt.org/projects/zathura-pdf-poppler/"
  url "https://pwmt.org/projects/zathura-pdf-poppler/download/zathura-pdf-poppler-0.2.8.tar.gz"
  sha256 "421d57a398d97c8264baced8743799fdec5f2cf989b34a8f42cf2277f4a9a5d4"
  depends_on "zathura"
  depends_on "poppler"

  def install
    ENV.deparallelize
    args = %W[
      PREFIX=#{prefix}
      PLUGINDIR=#{lib}/zathura
      ZATHURAFILE=#{HOMEBREW_PREFIX}/bin/zathura
    ]
    system "make", *args
    system "make", "install", *args
  end

end
