class Synctex < Formula

  desc "Synchronization for TeX"
  homepage "http://www.tug.org/svn/texlive/trunk/Build/source/texk/web2c/synctexdir/"
  url "svn://tug.org/texlive/trunk/Build/source/texk/web2c/synctexdir@52388", :using => :svn
  version "1.21.0"
  head "svn://tug.org/texlive/trunk/Build/source/texk/web2c/synctexdir", :using => :svn

  depends_on "pkg-config"
  depends_on "zlib"

  def install

    # from https://github.com/zegervdv/homebrew-zathura/blob/master/synctex.rb
    system "gcc -Wall -I. -lz -shared synctex_parser.c synctex_parser_utils.c -o libsynctex.dylib"
    lib.install "libsynctex.dylib"
    mkdir "#{include}/synctex"
    cp "synctex_parser.h", "#{include}/synctex/"
    cp "synctex_parser_utils.h", "#{include}/synctex/"
    cp "synctex_version.h", "#{include}/synctex/"

    # install pkg-config
    inreplace "synctex.pc.in" do |s|
      s.gsub! "@prefix@", prefix
      s.gsub! "@exec_prefix@", prefix
      s.gsub! "@libdir@", lib
      s.gsub! "@includedir@", include
      s.gsub! "@SYNCTEXVERSION@", "1.21.0"
    end

    mkdir "#{lib}/pkgconfig"
    cp "synctex.pc.in", "#{lib}/pkgconfig/synctex.pc"

  end

end

