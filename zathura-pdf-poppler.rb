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

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test zathura-pdf-poppler`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end

end
