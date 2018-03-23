class Girara < Formula
  desc "Library that implements a user interface that focuses on simplicity and minimalism."
  homepage "https://pwmt.org/projects/girara/"
  head "https://git.pwmt.org/pwmt/girara.git"
  url "https://pwmt.org/projects/girara/download/girara-0.2.9.tar.xz"
  sha256 "a81f3e94c71a2ff92bf52295b402ede8175f82fbad1a27f29c1c05a4accb7d52"

  depends_on "gtk+3"
  depends_on "glib"
  depends_on "meson"
  depends_on "pkg-config"
  depends_on "intltool" => :build
  depends_on "libnotify" => :recommended
  depends_on "json-c" => :recommended

  patch :DATA

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

__END__
diff --git a/meson.build b/meson.build
index 20af944..53058a2 100644
--- a/meson.build
+++ b/meson.build
@@ -30,7 +30,7 @@ prefix = get_option('prefix')
 localedir = get_option('localedir')

 # required dependencies
-libm = cc.find_library('libm')
+libm = cc.find_library('libm', required: false)
 glib = dependency('glib-2.0', version: '>=2.50')
 gtk3 = dependency('gtk+-3.0', version: '>=3.20')

