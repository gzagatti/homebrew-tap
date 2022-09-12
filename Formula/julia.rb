class Julia < Formula
  desc "Fast, dynamic programming language"
  homepage "https://julialang.org/"
  url "https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.0-linux-x86_64.tar.gz"
  version "1.8.0"
  sha256 "e80d732ccb7f79e000d798cb8b656dc3641ab59516d6e4e52e16765017892a00"
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
