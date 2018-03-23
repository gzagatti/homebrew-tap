class ZathuraPdfPoppler < Formula
  desc "Adds PDF support to zathura by using the poppler rendering engine."
  homepage "https://pwmt.org/projects/zathura-pdf-poppler/"
  url "https://pwmt.org/projects/zathura-pdf-poppler/download/zathura-pdf-poppler-0.2.9.tar.xz"
  sha256 "be0806116ea6e6c95495f5e244e0d70d2551a9058e5574b47d3e5a09bc6592dc"

  depends_on "zathura"
  depends_on "poppler"

  def install
    args = %W[
      --prefix=#{prefix}
    ]
    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

end
