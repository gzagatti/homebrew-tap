class NeovimRemote < Formula
  # built with the help of https://docs.brew.sh/Python-for-Formula-Authors
  desc "Support for neovim remote processes."
  homepage "https://github.com/mhinz/neovim-remote"
  url "https://files.pythonhosted.org/packages/cc/d8/82aec85fc7ad0853afca2c88e73ecc7d3a50c66988c44aa9748ccbc9b689/neovim-remote-2.4.0.tar.gz"
  sha256 "f199ebb61c3decf462feed4e7d467094ed38d8afaf43620736b5983a12fe2427"
  include Language::Python::Virtualenv

  depends_on "neovim"
  depends_on "python"

  resource "greenlet" do
    url "https://files.pythonhosted.org/packages/f8/e8/b30ae23b45f69aa3f024b46064c0ac8e5fcb4f22ace0dca8d6f9c8bbe5e7/greenlet-0.4.15.tar.gz"
    sha256 "9416443e219356e3c31f1f918a91badf2e37acf297e2fa13d24d1cc2380f8fbc"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/74/0a/de673c1c987f5779b65ef69052331ec0b0ebd22958bda77a8284be831964/msgpack-0.6.2.tar.gz"
    sha256 "ea3c2f859346fcd55fc46e96885301d9c2f7a36d453f5d8f2967840efa1e1830"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/73/93/4f8213fbe66fc20cb904f35e6e04e20b47b85bee39845cc66a0bcf5ccdcb/psutil-5.6.7.tar.gz"
    sha256 "ffad8eb2ac614518bbe3c0b8eb9dffdb3a8d2e3a7d5da51c5b974fb723a5c5aa"
  end

  resource "pynvim" do
    url "https://files.pythonhosted.org/packages/06/5c/a7a3eb3787c81a11f0c02a11b1ee7d5736d67f5a919c9999ac57479636bd/pynvim-0.4.1.tar.gz"
    sha256 "55e918d664654cfa1c9889d3dbe7c63e9f338df5d49471663f78d54c85e84c58"
  end

  def install
    virtualenv_install_with_resources
  end

end
