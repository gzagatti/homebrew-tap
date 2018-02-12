# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Zathura < Formula
  desc "Highly customizable and functional document viewer."
  homepage "https://pwmt.org/projects/zathura/"
  url "https://pwmt.org/projects/zathura/download/zathura-0.3.8.tar.gz"
  sha256 "46bf8558f7ff12efe11bf5d19e6e223aac97126061677199d0c3d53dfcbce537"
  head "https://git.pwmt.org/pwmt/zathura.git"


  depends_on "gtk+3"
  depends_on "girara"
  depends_on "intltool" => :build
  depends_on "libmagic" => :optional
  depends_on "sqlite3" => :optional
  #depends_on "check" => :optional

  def install
    ENV.deparallelize
    args = %W[
      PREFIX=#{prefix}
      LOCALEDIR=#{share}/locale
      PLUGINDIR=#{HOMEBREW_PREFIX}/lib/zathura
    ]
    if build.with? "sqlite3"
      args << %W[WITH_SQLITE=1]
    end
    if build.with? "libmagic"
      args << %W[WITH_MAGIC=1]
    end
    system "make", *args
    system "make", "install", *args
  end

end
