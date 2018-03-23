class Zathura < Formula
  include Language::Python::Virtualenv

  desc "Highly customizable and functional document viewer."
  homepage "https://pwmt.org/projects/zathura/"
  url "https://pwmt.org/projects/zathura/download/zathura-0.3.9.tar.xz"
  sha256 "2f74a5d288db1f46f1d704d69a9c7822985964e90b793636c6c80a25d29f097c"
  head "https://git.pwmt.org/pwmt/zathura.git"

  depends_on "gtk+3"
  depends_on "girara"
  depends_on "meson"
  depends_on "intltool" => :build
  depends_on "python3" => :build
  depends_on "libmagic" => :recommended
  depends_on "sqlite3" => :recommended

  # we need to patch the plugindir to a common location
  patch :DATA

  resource "alabaster" do
    url "https://files.pythonhosted.org/packages/d0/a5/e3a9ad3ee86aceeff71908ae562580643b955ea1b1d4f08ed6f7e8396bd7/alabaster-0.7.10.tar.gz"
    sha256 "37cdcb9e9954ed60912ebc1ca12a9d12178c26637abdf124e3cde2341c257fe0"
  end

  resource "Babel" do
    url "https://files.pythonhosted.org/packages/0e/d5/9b1d6a79c975d0e9a32bd337a1465518c2519b14b214682ca9892752417e/Babel-2.5.3.tar.gz"
    sha256 "8ce4cb6fdd4393edd323227cba3a077bceb2a6ce5201c902c65e730046f41f14"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/15/d4/2f888fc463d516ff7bf2379a4e9a552fef7f22a94147655d9b1097108248/certifi-2018.1.18.tar.gz"
    sha256 "edbc3f203427eef571f79a7692bb160a2b0f7ccaa31953e99bd17e307cf63f7d"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f4/bd/0467d62790828c23c47fc1dfa1b1f052b24efdf5290f071c7a91d0d82fd3/idna-2.6.tar.gz"
    sha256 "2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f"
  end

  resource "imagesize" do
    url "https://files.pythonhosted.org/packages/c6/3f/1db2da33804e8d7ef3a868b27b7bdc1aae6a4f693f0162d2aeeaf503864f/imagesize-1.0.0.tar.gz"
    sha256 "5b326e4678b6925158ccc66a9fa3122b6106d7c876ee32d7de6ce59385b96315"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz"
    sha256 "f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz"
    sha256 "a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/77/32/439f47be99809c12ef2da8b60a2c47987786d2c6c9205549dd6ef95df8bd/packaging-17.1.tar.gz"
    sha256 "f019b770dd64e585a99714f1fd5e01c7a8f11b45635aa953fd41c689a657375b"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/71/2a/2e4e77803a8bd6408a2903340ac498cb0a2181811af7c9ec92cb70b0308a/Pygments-2.2.0.tar.gz"
    sha256 "dbae1046def0efb574852fab9e90209b23f556367b5a320c0bcb871c77c3e8cc"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/3c/ec/a94f8cf7274ea60b5413df054f82a8980523efd712ec55a59e7c3357cf7c/pyparsing-2.2.0.tar.gz"
    sha256 "0832bcf47acd283788593e7a0f542407bd9550a55a8a8435214a1960e04bcb04"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/1b/50/4cdc62fc0753595fc16c8f722a89740f487c6e5670c644eb8983946777be/pytz-2018.3.tar.gz"
    sha256 "410bcd1d6409026fbaa65d9ed33bf6dd8b1e94a499e32168acfc7b332e4095c0"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/b0/e1/eab4fc3752e3d240468a8c0b284607899d2fbfb236a56b7377a329aa8d09/requests-2.18.4.tar.gz"
    sha256 "9c443e7324ba5b85070c4a818ade28bfabedf16ea10206da1132edaa6dda237e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "snowballstemmer" do
    url "https://files.pythonhosted.org/packages/20/6b/d2a7cb176d4d664d94a6debf52cd8dbae1f7203c8e42426daa077051d59c/snowballstemmer-1.2.1.tar.gz"
    sha256 "919f26a68b2c17a7634da993d91339e288964f93c274f1343e3bbbe2096e1128"
  end

  resource "Sphinx" do
    url "https://files.pythonhosted.org/packages/0d/12/843cdf08c9795d1d225c92e099a18143856110cbeff562b8abd60bd26cec/Sphinx-1.7.2.tar.gz"
    sha256 "5a1c9a0fec678c24b9a2f5afba240c04668edb7f45c67ce2ed008996b3f21ae2"
  end

  resource "sphinxcontrib-websupport" do
    url "https://files.pythonhosted.org/packages/c5/6b/f0630436b931ad4f8331a9399ca18a7d447f0fcc0c7178fb56b1aee68d01/sphinxcontrib-websupport-1.0.1.tar.gz"
    sha256 "7a85961326aa3a400cd4ad3c816d70ed6f7c740acd7ce5d78cd0a67825072eb9"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ee/11/7c59620aceedcc1ef65e156cc5ce5a24ef87be4107c2b74458464e437a5d/urllib3-1.22.tar.gz"
    sha256 "cc44da8e1145637334317feebd728bd869a35285b93cbb4cca2577da7e62db4f"
  end

  def install

    args = %W[
      --prefix=#{prefix}
      -Dplugindir=#{HOMEBREW_PREFIX}/lib/zathura
      -Denable-seccomp=false
      -Denable-synctex=#{File.exists? "/Library/TeX/texbin/synctex"}
      -Denable-sqlite=#{build.with? "sqlite3"}
      -Denable-magic=#{build.with? "libmagic"}
    ]

    # this requires mactex to be installed, since
    # it installs synctex in this location
    if args[3].end_with? "true"
      ENV["PATH"] = "/Library/TeX/texbin:" + ENV["PATH"]
    end

    # install python dependencies temporarily in the
    # build path, brew provide tools for making the
    # process of creating a virtualenv and deploying
    # the dependencies easier
    # TODO: ideally we would create a Sphinx brew formula
    venv = virtualenv_create(buildpath, "python3")
    venv.pip_install resources
    ENV["PATH"] = "#{buildpath}/bin:" + ENV["PATH"]

    system "meson", *args, "build"
    system "ninja -C build"
    system "ninja install -C build"

  end

end

__END__
diff --git a/meson.build b/meson.build
index 9dce1ae..03f01fc 100644
--- a/meson.build
+++ b/meson.build
@@ -33,10 +33,10 @@ datadir = get_option('datadir')
 metainfodir = join_paths(datadir, 'metainfo')
 desktopdir = join_paths(datadir, 'applications')
 dbusinterfacesdir = join_paths(datadir, 'dbus-1', 'interfaces')
-plugindir = join_paths(get_option('libdir'), 'zathura')
+plugindir = get_option('plugindir')
 
 # required dependencies
-libm = cc.find_library('libm')
+libm = cc.find_library('libm', required: false)
 girara = dependency('girara-gtk3', version: '>=0.2.9')
 glib = dependency('glib-2.0', version: '>=2.50')
 gthread = dependency('gthread-2.0', version: '>=2.50')
@@ -50,7 +50,7 @@ build_dependencies = [libm, girara, glib, gthread, gmodule, gtk3, cairo]
 defines = [
   '-DGETTEXT_PACKAGE="zathura"',
   '-DLOCALEDIR="@0@"'.format(join_paths(prefix, localedir)),
-  '-DZATHURA_PLUGINDIR="@0@"'.format(join_paths(prefix, plugindir)),
+  '-DZATHURA_PLUGINDIR="@0@"'.format(plugindir),
   '-D_DEFAULT_SOURCE',
 ]
 
@@ -184,7 +184,7 @@ pkg.generate(
   variables: [
     'apiversion=@0@'.format(plugin_api_version),
     'abiversion=@0@'.format(plugin_abi_version),
-    'plugindir=${libdir}/zathura'
+    'plugindir=@0@'.format(plugindir)
   ]
 )
 
diff --git a/meson_options.txt b/meson_options.txt
index 85c5a58..c714b04 100644
--- a/meson_options.txt
+++ b/meson_options.txt
@@ -18,3 +18,6 @@ option('enable-seccomp',
   value: false,
   description: 'Enable experimental seccomp support if available.'
 )
+option('plugindir',
+  type: 'string',
+)
