class Zathura < Formula

  desc "Highly customizable and functional document viewer."
  homepage "https://pwmt.org/projects/zathura/"
  url "https://pwmt.org/projects/zathura/download/zathura-0.4.3.tar.xz"
  sha256 "7e12194426d709670e0f4b0b107c80dd21322881b57d4a0bf9a09998402ffd41"
  head "https://git.pwmt.org/pwmt/zathura.git"

  depends_on "gtk+3"
  depends_on "girara"
  depends_on "meson"
  depends_on "intltool" => :build
  depends_on "python3" => :build
  depends_on "json-c" => :build
  depends_on "sphinx-doc" => :build
  depends_on "libmagic" => :recommended
  depends_on "sqlite3" => :recommended

  # we need to patch the plugindir to a common location
  patch :DATA

  def install

    args = %W[
      --prefix=#{prefix}
      -Dplugindir=#{HOMEBREW_PREFIX}/lib/zathura
      -Denable-seccomp=false
      -Denable-synctex=#{File.exists? "/Library/TeX/texbin/synctex"}
      -Denable-sqlite=#{build.with? "sqlite3"}
      -Denable-magic=#{build.with? "libmagic"}
    ]

    # this requires mactex to be installed, since
    # it installs synctex in this location
    if args[3].end_with? "true"
      ENV["PATH"] = "/Library/TeX/texbin:" + ENV["PATH"]
    end

    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

end

__END__
diff --git a/meson.build b/meson.build
index f42d5eb..dc5ac9c 100644
--- a/meson.build
+++ b/meson.build
@@ -33,7 +33,7 @@ datadir = get_option('datadir')
 metainfodir = join_paths(datadir, 'metainfo')
 desktopdir = join_paths(datadir, 'applications')
 dbusinterfacesdir = join_paths(datadir, 'dbus-1', 'interfaces')
-plugindir = join_paths(get_option('libdir'), 'zathura')
+plugindir = get_option('plugindir')
 
 # required dependencies
 libm = cc.find_library('libm', required: false)
@@ -51,7 +51,7 @@ build_dependencies = [libm, girara, glib, gio, gthread, gmodule, gtk3, cairo]
 defines = [
   '-DGETTEXT_PACKAGE="zathura"',
   '-DLOCALEDIR="@0@"'.format(join_paths(prefix, localedir)),
-  '-DZATHURA_PLUGINDIR="@0@"'.format(join_paths(prefix, plugindir)),
+  '-DZATHURA_PLUGINDIR="@0@"'.format(plugindir),
   '-D_DEFAULT_SOURCE',
 ]
 
@@ -188,7 +188,7 @@ pkg.generate(
   variables: [
     'apiversion=@0@'.format(plugin_api_version),
     'abiversion=@0@'.format(plugin_abi_version),
-    'plugindir=${libdir}/zathura'
+    'plugindir=@0@'.format(plugindir)
   ]
 )
 
diff --git a/meson_options.txt b/meson_options.txt
index 85c5a58..c714b04 100644
--- a/meson_options.txt
+++ b/meson_options.txt
@@ -18,3 +18,6 @@ option('enable-seccomp',
   value: false,
   description: 'Enable experimental seccomp support if available.'
 )
+option('plugindir',
+  type: 'string',
+)
