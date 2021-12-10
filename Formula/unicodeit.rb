class Unicodeit < Formula
  include Language::Python::Virtualenv

  desc "Converts LaTeX tags to unicode: \mathcal{H} → ℋ"
  homepage "https://www.unicodeit.net"
  url "https://github.com/svenkreiss/unicodeit/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "97d7fd4355be595e708a4414234c591a2b821222f86731705c747897beb8c281"
  license :public_domain
  head "https://github.com/svenkreiss/unicodeit.git", branch: "master"

  depends_on "python"

  # the code does not install with the CLI, we need to patch setup.py
  # to make the script available to the system
  patch :DATA

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "α", shell_output("#{bin}/unicodeit \\\\alpha")
  end
end

__END__
diff --git a/setup.cfg b/setup.cfg
index cd6afc9..9e762ac 100644
--- a/setup.cfg
+++ b/setup.cfg
@@ -1,3 +1,6 @@
 [pycodestyle]
 max-line-length=119
 ignore=E741,W503
+[options.entry_points]
+console_scripts =
+    unicodeit = unicodeit.cli:main
diff --git a/unicodeit/cli.py b/unicodeit/cli.py
index bf92396..46c9b5e 100644
--- a/unicodeit/cli.py
+++ b/unicodeit/cli.py
@@ -2,6 +2,9 @@ import sys

 from .replace import replace

-if __name__ == "__main__":
+def main():
     result = [replace(f) for f in sys.argv[1:]]
     print(' '.join(result))
+
+if __name__ == "__main__":
+    main()
