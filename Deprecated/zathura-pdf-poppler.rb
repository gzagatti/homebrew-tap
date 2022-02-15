class ZathuraPdfPoppler < Formula
  desc "Adds PDF support to zathura by using the poppler rendering engine."
  homepage "https://pwmt.org/projects/zathura-pdf-poppler/"
  url "https://pwmt.org/projects/zathura-pdf-poppler/download/zathura-pdf-poppler-0.3.0.tar.xz"
  sha256 "d5cc3a7dae49471b85b503bbb9049c6f8d10903f4a611d721a2e0fefe726d4ed"

  depends_on "zathura"
  depends_on "poppler"

  def install
    # patch copied from https://github.com/zegervdv/homebrew-zathura/blob/master/zathura-pdf-poppler.rb
    inreplace "meson.build", "zathura.get_pkgconfig_variable('plugindir')", "prefix"
    args = %W[
      --prefix=#{prefix}
    ]
    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

  def post_install
    plugin="libpdf-poppler.dylib"
    plugin_library = HOMEBREW_PREFIX/"lib/zathura/"
    ln_s prefix/plugin, plugin_library/plugin, :force => true

  end

end
