class Lsusers < Formula
  include Language::Python::Virtualenv

  desc "List Linux and macOS user accounts simply"
  homepage "https://github.com/exoduscode/lsusers"
  url "https://github.com/exoduscode/lsusers/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "173c83cbc9ec7ab942aaa07252a8ae8684fadc6fa53df461c0b6e31c3a21856c"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lsusers 0.1.3", shell_output("#{bin}/lsusers --version")
    assert_match "usage:", shell_output("#{bin}/lsusers --help")
    assert_match "human:", shell_output("#{bin}/lsusers count")
  end
end
