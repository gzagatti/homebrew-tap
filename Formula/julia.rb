class Julia < Formula
  desc "The Julia language"
  homepage "https://julialang.org/"
  url "https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz"
  version "1.5.3"
  sha256 "f190c938dd6fed97021953240523c9db448ec0a6760b574afd4e9924ab5615f1"
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
