class Girara < Formula
  desc "Library that implements a user interface that focuses on simplicity and minimalism."
  homepage "https://pwmt.org/projects/girara/"
  head "https://git.pwmt.org/pwmt/girara.git"
  url "https://pwmt.org/projects/girara/download/girara-0.3.2.tar.xz"
  sha256 "1700353a101f3c520f9b22e79d71ea5b268a9ec324796cf9e64775d96bb086cd"

  depends_on "gtk+3"
  depends_on "glib"
  depends_on "meson"
  depends_on "pkg-config"
  depends_on "intltool" => :build
  depends_on "libnotify" => :recommended
  depends_on "json-c" => :recommended

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
