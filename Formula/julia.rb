class Julia < Formula
  desc "The Julia language"
  homepage "https://julialang.org/"
  url "https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.7.2-linux-x86_64.tar.gz"
  version "1.7.0"
  sha256 "a75244724f3b2de0e7249c861fbf64078257c16fb4203be78f1cf4dd5973ba95"
  license "MIT"

  def install
    Dir["./*"].each { |f| mv f, prefix }
  end

  test do
    system "#{bin}/julia", "--help"
    File.write("test.jl", <<-END
      1+1
      println("Hello, brew!")
    END
    )
    system "#{bin}/julia", "test.jl"
  end
end
