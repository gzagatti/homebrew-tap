# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kitty < Formula
  include Language::Python::Virtualenv

  desc "Cross-platform, fast, feature-rich, GPU based terminal"
  homepage "https://sw.kovidgoyal.net/kitty/"
  url "https://github.com/kovidgoyal/kitty/releases/download/v0.24.2/kitty-0.24.2-x86_64.txz"
  sha256 "ed7653c21dc2623da61bd482915d254c6f3b2325ff0666aa0cb5585a5a443fad"
  # url "https://github.com/kovidgoyal/kitty/archive/refs/tags/v0.24.2.zip"
  # sha256 "b84abd9dc12e095e49a6033421beb49f4bf31a69ee3c0b2b36a89dd9b4d2f6b4"
  # head "https://github.com/kovidgoyal/kitty/tree/master"
  license "GPL-3.0"

  # depends_on "python"
  # depends_on "harfbuzz"
  # depends_on "zlib"
  # depends_on "libpng"
  # depends_on "little-cms2"
  # depends_on "librsync"
  # depends_on "freetype"
  # depends_on "fontconfig"
  # depends_on "libcanberra"
  # depends_on "imagemagick"
  # depends_on "gcc" => :build
  # depends_on "pkg-config" => :build
  # depends_on "dbus"
  # depends_on "libxcursor"
  # depends_on "libxrandr"
  # depends_on "libxi"
  # depends_on "libxinerama"
  # depends_on "glm"
  # depends_on "libx11"
  # depends_on "libxkbcommon"
  # depends_on "librsync"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # venv = virtualenv_create(libexec, "python3")
    # venv.pip_install resources
    # File.foreach("#{buildpath}/docs/requirements.txt") do |r| venv.pip_install r end
    # shim = <<~PYTHON
    # import setuptools, tokenize
    # __file__ = 'setup.py'
    # exec(compile(getattr(tokenize, 'open', open)(__file__).read()
    #   .replace('\\r\\n', '\\n'), __file__, 'exec'))
    # PYTHON
    # ENV["SPHINXBUILD"] = "#{libexec}/bin/sphinx-build"
    # system "#{libexec}/bin/python3", *%W[
    #     -c
    #     #{shim}
    #     linux-package
    #     --update-check-interval=0
    #     --shell-integration=enabled\\\ no-rc
    # ]
    # Dir["./*"].each { |f| mv f, prefix }
  end

  # resource "alabaster" do
  #   url "https://files.pythonhosted.org/packages/cc/b4/ed8dcb0d67d5cfb7f83c4d5463a7614cb1d078ad7ae890c9143edebbf072/alabaster-0.7.12.tar.gz"
  #   sha256 "a661d72d58e6ea8a57f7a86e37d86716863ee5e92788398526d58b26a4e4dc02"
  # end

  # resource "Babel" do
  #   url "https://files.pythonhosted.org/packages/17/e6/ec9aa6ac3d00c383a5731cc97ed7c619d3996232c977bb8326bcbb6c687e/Babel-2.9.1.tar.gz"
  #   sha256 "bc0c176f9f6a994582230df350aa6e05ba2ebe4b3ac317eab29d9be5d2768da0"
  # end

  # resource "beautifulsoup4" do
  #   url "https://files.pythonhosted.org/packages/a1/69/daeee6d8f22c997e522cdbeb59641c4d31ab120aba0f2c799500f7456b7e/beautifulsoup4-4.10.0.tar.gz"
  #   sha256 "c23ad23c521d818955a4151a67d81580319d4bf548d3d49f4223ae041ff98891"
  # end

  # resource "certifi" do
  #   url "https://files.pythonhosted.org/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
  #   sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  # end

  # resource "charset-normalizer" do
  #   url "https://files.pythonhosted.org/packages/e8/e8/b6cfd28fb430b2ec9923ad0147025bf8bbdf304b1eb3039b69f1ce44ed6e/charset-normalizer-2.0.11.tar.gz"
  #   sha256 "98398a9d69ee80548c762ba991a4728bfc3836768ed226b3945908d1a688371c"
  # end

  # resource "docutils" do
  #   url "https://files.pythonhosted.org/packages/4c/17/559b4d020f4b46e0287a2eddf2d8ebf76318fd3bd495f1625414b052fdc9/docutils-0.17.1.tar.gz"
  #   sha256 "686577d2e4c32380bb50cbb22f575ed742d58168cee37e99117a854bcd88f125"
  # end

  # resource "furo" do
  #   url "https://files.pythonhosted.org/packages/05/3c/68f884dea733848b063ef1e8d38296dc2a91f3c44ab27ebc23693b17c725/furo-2022.1.2.tar.gz"
  #   sha256 "b217f218cbcd423ffbfe69baa79389d4ecebf2d86f0d593c44ef31da7b5aed30"
  # end

  # resource "idna" do
  #   url "https://files.pythonhosted.org/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
  #   sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  # end

  # resource "imagesize" do
  #   url "https://files.pythonhosted.org/packages/f6/27/b147794d43249e8303a06f427e407a090696b65b81045e36f8873d8d8a42/imagesize-1.3.0.tar.gz"
  #   sha256 "cd1750d452385ca327479d45b64d9c7729ecf0b3969a58148298c77092261f9d"
  # end

  # resource "importlib-metadata" do
  #   url "https://files.pythonhosted.org/packages/f8/41/8ffb059708359ea14a3ec74a99a2bf0cd44a0c983a0c480d9eb7a69438bb/importlib_metadata-4.10.1.tar.gz"
  #   sha256 "951f0d8a5b7260e9db5e41d429285b5f451e928479f19d80818878527d36e95e"
  # end

  # resource "Jinja2" do
  #   url "https://files.pythonhosted.org/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.gz"
  #   sha256 "611bb273cd68f3b993fabdc4064fc858c5b47a973cb5aa7999ec1ba405c87cd7"
  # end

  # resource "MarkupSafe" do
  #   url "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
  #   sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  # end

  # resource "packaging" do
  #   url "https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz"
  #   sha256 "dd47c42927d89ab911e606518907cc2d3a1f38bbd026385970643f9c5b8ecfeb"
  # end

  # resource "Pygments" do
  #   url "https://files.pythonhosted.org/packages/94/9c/cb656d06950268155f46d4f6ce25d7ffc51a0da47eadf1b164bbf23b718b/Pygments-2.11.2.tar.gz"
  #   sha256 "4e426f72023d88d03b2fa258de560726ce890ff3b630f88c21cbb8b2503b8c6a"
  # end

  # resource "pyparsing" do
  #   url "https://files.pythonhosted.org/packages/d6/60/9bed18f43275b34198eb9720d4c1238c68b3755620d20df0afd89424d32b/pyparsing-3.0.7.tar.gz"
  #   sha256 "18ee9022775d270c55187733956460083db60b37d0d0fb357445f3094eed3eea"
  # end

  # resource "pytz" do
  #   url "https://files.pythonhosted.org/packages/e3/8e/1cde9d002f48a940b9d9d38820aaf444b229450c0854bdf15305ce4a3d1a/pytz-2021.3.tar.gz"
  #   sha256 "acad2d8b20a1af07d4e4c9d2e9285c5ed9104354062f275f3fcd88dcef4f1326"
  # end

  # resource "requests" do
  #   url "https://files.pythonhosted.org/packages/60/f3/26ff3767f099b73e0efa138a9998da67890793bfa475d8278f84a30fec77/requests-2.27.1.tar.gz"
  #   sha256 "68d7c56fd5a8999887728ef304a6d12edc7be74f1cfa47714fc8b414525c9a61"
  # end

  # resource "snowballstemmer" do
  #   url "https://files.pythonhosted.org/packages/44/7b/af302bebf22c749c56c9c3e8ae13190b5b5db37a33d9068652e8f73b7089/snowballstemmer-2.2.0.tar.gz"
  #   sha256 "09b16deb8547d3412ad7b590689584cd0fe25ec8db3be37788be3810cbf19cb1"
  # end

  # resource "soupsieve" do
  #   url "https://files.pythonhosted.org/packages/e1/25/a3005eedafb34e1258458e8a4b94900a60a41a2b4e459e0e19631648a2a0/soupsieve-2.3.1.tar.gz"
  #   sha256 "b8d49b1cd4f037c7082a9683dfa1801aa2597fb11c3a1155b7a5b94829b4f1f9"
  # end

  # resource "Sphinx" do
  #   url "https://files.pythonhosted.org/packages/c9/08/c2932e66460cfbc8973928d276dc82ccde2d24b365055eeda9f0afc1951e/Sphinx-4.4.0.tar.gz"
  #   sha256 "6caad9786055cb1fa22b4a365c1775816b876f91966481765d7d50e9f0dd35cc"
  # end

  # resource "sphinx-copybutton" do
  #   url "https://files.pythonhosted.org/packages/4d/a7/d9fca1553828adfb3496f6436a1c3d624d71cae76d56e569dc722f92cbca/sphinx-copybutton-0.5.0.tar.gz"
  #   sha256 "a0c059daadd03c27ba750da534a92a63e7a36a7736dcf684f26ee346199787f6"
  # end

  # resource "sphinx-inline-tabs" do
  #   url "https://files.pythonhosted.org/packages/65/ed/120f0f62243aa3fbb6a22fb28940ffdfa783013700c82d445e687b86f0bb/sphinx_inline_tabs-2022.1.2b11.tar.gz"
  #   sha256 "afb9142772ec05ccb07f05d8181b518188fc55631b26ee803c694e812b3fdd73"
  # end

  # resource "sphinxcontrib-applehelp" do
  #   url "https://files.pythonhosted.org/packages/9f/01/ad9d4ebbceddbed9979ab4a89ddb78c9760e74e6757b1880f1b2760e8295/sphinxcontrib-applehelp-1.0.2.tar.gz"
  #   sha256 "a072735ec80e7675e3f432fcae8610ecf509c5f1869d17e2eecff44389cdbc58"
  # end

  # resource "sphinxcontrib-devhelp" do
  #   url "https://files.pythonhosted.org/packages/98/33/dc28393f16385f722c893cb55539c641c9aaec8d1bc1c15b69ce0ac2dbb3/sphinxcontrib-devhelp-1.0.2.tar.gz"
  #   sha256 "ff7f1afa7b9642e7060379360a67e9c41e8f3121f2ce9164266f61b9f4b338e4"
  # end

  # resource "sphinxcontrib-htmlhelp" do
  #   url "https://files.pythonhosted.org/packages/eb/85/93464ac9bd43d248e7c74573d58a791d48c475230bcf000df2b2700b9027/sphinxcontrib-htmlhelp-2.0.0.tar.gz"
  #   sha256 "f5f8bb2d0d629f398bf47d0d69c07bc13b65f75a81ad9e2f71a63d4b7a2f6db2"
  # end

  # resource "sphinxcontrib-jsmath" do
  #   url "https://files.pythonhosted.org/packages/b2/e8/9ed3830aeed71f17c026a07a5097edcf44b692850ef215b161b8ad875729/sphinxcontrib-jsmath-1.0.1.tar.gz"
  #   sha256 "a9925e4a4587247ed2191a22df5f6970656cb8ca2bd6284309578f2153e0c4b8"
  # end

  # resource "sphinxcontrib-qthelp" do
  #   url "https://files.pythonhosted.org/packages/b1/8e/c4846e59f38a5f2b4a0e3b27af38f2fcf904d4bfd82095bf92de0b114ebd/sphinxcontrib-qthelp-1.0.3.tar.gz"
  #   sha256 "4c33767ee058b70dba89a6fc5c1892c0d57a54be67ddd3e7875a18d14cba5a72"
  # end

  # resource "sphinxcontrib-serializinghtml" do
  #   url "https://files.pythonhosted.org/packages/b5/72/835d6fadb9e5d02304cf39b18f93d227cd93abd3c41ebf58e6853eeb1455/sphinxcontrib-serializinghtml-1.1.5.tar.gz"
  #   sha256 "aa5f6de5dfdf809ef505c4895e51ef5c9eac17d0f287933eb49ec495280b6952"
  # end

  # resource "sphinxext-opengraph" do
  #   url "https://files.pythonhosted.org/packages/9d/86/d15957e0d2f3a4ab3ef0376365e1a9cff797dddcae71f3ceb35438f7c363/sphinxext-opengraph-0.5.1.tar.gz"
  #   sha256 "78675a8a490c749a881892abc4f28ac3a2e8e65b066fe346fa7da882290906a5"
  # end

  # resource "urllib3" do
  #   url "https://files.pythonhosted.org/packages/b0/b1/7bbf5181f8e3258efae31702f5eab87d8a74a72a0aa78bc8c08c1466e243/urllib3-1.26.8.tar.gz"
  #   sha256 "0e7c33d9a63e7ddfcb86780aac87befc2fbddf46c58dbb487e0855f7ceec283c"
  # end

  # resource "zipp" do
  #   url "https://files.pythonhosted.org/packages/94/64/3115548d41cb001378099cb4fc6a6889c64ef43ac1b0e68c9e80b55884fa/zipp-3.7.0.tar.gz"
  #   sha256 "9f50f446828eb9d45b267433fd3e9da8d801f614129124863f9c51ebceafb87d"
  # end


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kitty`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
