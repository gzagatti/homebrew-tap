# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Colorgrab < Formula
  desc "A cross-platform color picker"
  homepage "https://github.com/nielssp/colorgrab"
  url "https://github.com/nielssp/colorgrab/archive/v0.3.tar.gz"
  sha256 "94d38e8c630b2c5f5e5d50b021dd320bedea15668d39da36992d2041fb9998ed"
  license "MIT"
  head "https://github.com/nielssp/colorgrab.git"

  depends_on "wxwidgets" => :build
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "all"
    bin.install "colorgrab"
    (share / "applications").install "pkg/arch/colorgrab.desktop"
    (share / "icons/hicolor/scalable/apps").install "img/scalable.svg" => "colorgrab.svg"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test colorgrab`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
