class Girara < Formula
  desc "Library that implements a user interface that focuses on simplicity and minimalism."
  homepage "https://pwmt.org/projects/girara/"
  head "https://git.pwmt.org/pwmt/girara.git"
  url "https://pwmt.org/projects/girara/download/girara-0.3.0.tar.xz"
  sha256 "b752fa5ff0a98cfa773bbcf66bb8a5e337a61cbb085d6577b3979178d17e41a2"

  depends_on "gtk+3"
  depends_on "glib"
  depends_on "meson"
  depends_on "pkg-config"
  depends_on "intltool" => :build
  depends_on "libnotify" => :recommended
  depends_on "json-c" => :recommended

  # patch :DATA

  def install

    args = %W[
      --prefix=#{prefix}
      -Denable-notify=#{build.with? "libnotify"}
      -Denable-json=#{build.with? "json-c"}
    ]

    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

end
