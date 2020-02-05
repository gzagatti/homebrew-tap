class Zathura < Formula

  desc "Highly customizable and functional document viewer."
  homepage "https://pwmt.org/projects/zathura/"
  url "https://pwmt.org/projects/zathura/download/zathura-0.4.5.tar.xz"
  sha256 "0c3997aafbcdaaae60a4522f208adadfdd2758b432ce94ea16fbcee937cb762c"
  head "https://git.pwmt.org/pwmt/zathura.git"

  depends_on :x11
  depends_on "gtk+3"
  depends_on "girara"
  depends_on "meson"
  depends_on "intltool" => :build
  depends_on "python3" => :build
  depends_on "json-c" => :build
  depends_on "sphinx-doc" => :build
  depends_on "synctex" => :recommended
  depends_on "libmagic" => :recommended
  depends_on "sqlite3" => :recommended

  def install

    args = %W[
      --prefix=#{prefix}
      -Dseccomp=disabled
      -Dsynctex=#{(build.with? "synctex")? "enabled": "disabled"}
      -Dsqlite=#{(build.with? "sqlite3")? "enabled": "disabled"}
      -Dmagic=#{(build.with? "libmagic")? "enabled": "disabled"}
    ]

    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

  def post_install
    plugin_library = HOMEBREW_PREFIX/"lib/zathura"
    plugin_library.mkpath
    ln_s plugin_library, lib/"zathura", :force => true
  end

end
