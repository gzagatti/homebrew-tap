class Peek < Formula
  desc "Simple animated GIF screen recorder with an easy to use interface"
  homepage "https://github.com/phw/peek"
  url "https://github.com/phw/peek/archive/1.5.1.tar.gz"
  sha256 "d2b52297d3941db2f10ad4dd00a6d5606728c0fee6af5f1594a036f88e478237"
  license "GNU"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "vala"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    mkdir "build" do
      system "meson", *std_meson_args, ".."
      system "ninja", "-v"
      system "ninja", "install", "-v"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test peek`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
