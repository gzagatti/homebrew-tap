# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Zathura < Formula
  desc "Highly customizable and functional document viewer."
  homepage "https://pwmt.org/projects/zathura/"
  url "https://pwmt.org/projects/zathura/download/zathura-0.3.8.tar.gz"
  sha256 "46bf8558f7ff12efe11bf5d19e6e223aac97126061677199d0c3d53dfcbce537"
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

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test zathura`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end

end
