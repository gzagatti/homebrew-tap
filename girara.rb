# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Girara < Formula
  desc "Library that implements a user interface that focuses on simplicity and minimalism."
  homepage "https://pwmt.org/projects/girara/"
  head "https://git.pwmt.org/pwmt/girara.git"
  url "https://pwmt.org/projects/girara/download/girara-0.2.8.tar.gz"
  sha256 "285905e35375ecbdfe418c6b7735e373d780f76a5b6c90c08db28da9f4d09aa3"
  depends_on "gtk+3"
  depends_on "glib"
  depends_on "pkg-config"
  depends_on "gettext"
  depends_on "intltool" => :build
  depends_on "libnotify" => :optional
  depends_on "json-c" => :optional
  #depends_on "check" => :optional

  def install
    ENV.deparallelize
    args = %W[
      PREFIX=#{prefix}
      LOCALEDIR=#{share}/locale
    ]
    if build.with? "libnotify"
      args << %W[WITH_LIBNOTIFY=1]
    end
    if build.with? "json-c"
      args << %W[WITH_JSON=1]
    end
    system "make", *args
    system "make", "install", *args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test girara`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end

end
