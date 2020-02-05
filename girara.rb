class Girara < Formula
  desc "Library that implements a user interface that focuses on simplicity and minimalism."
  homepage "https://pwmt.org/projects/girara/"
  head "https://git.pwmt.org/pwmt/girara.git"
  url "https://pwmt.org/projects/girara/download/girara-0.3.4.tar.xz"
  sha256 "51fcda5a50a68fabd461fb4e467a1defd531dafca4f47f6851a9eb56756cb232"

  depends_on :x11
  depends_on "pkg-config"
  depends_on "gtk+3"
  depends_on "gettext"
  depends_on "meson"
  depends_on "libnotify" => :recommended
  depends_on "json-c" => :recommended

  def install

    # from  zegervdv/homebrew-zathura
    inreplace "girara/utils.c" do |s|
      s.gsub! /xdg-open/, "open"
    end

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
