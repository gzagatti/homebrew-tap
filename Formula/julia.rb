class Julia < Formula
  desc "The Julia language"
  homepage "https://julialang.org/"
  url "https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.1-linux-x86_64.tar.gz"
  version "1.6.1"
  sha256 "7c888adec3ea42afbfed2ce756ce1164a570d50fa7506c3f2e1e2cbc49d52506"
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
