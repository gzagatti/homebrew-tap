class Julia < Formula
  desc "Fast, dynamic programming language"
  homepage "https://julialang.org/"
  url "https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.5-linux-x86_64.tar.gz"
  version "1.8.5"
  sha256 "e71a24816e8fe9d5f4807664cbbb42738f5aa9fe05397d35c81d4c5d649b9d05"
  license "MIT"

  def install
    prefix.install Dir["./*"]
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
