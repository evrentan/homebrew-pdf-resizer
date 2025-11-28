class PdfResizer < Formula
  include Language::Python::Virtualenv

  desc "Resize PDF files by scaling all pages"
  homepage "https://github.com/evrentan/pdf-resizer"
  url "https://github.com/evrentan/pdf-resizer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4df6afadb0e065d91db8263d84f68a63d416fd8cdee1d9bb07e47353d97b1a18"
  license "MIT"

  depends_on "python@3.12"

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/source/p/pypdf/pypdf-6.4.0.tar.gz"
    sha256 "4769d471f8ddc3341193ecc5d6560fa44cf8cd0abfabf21af4e195cc0c224072"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pdf-resizer", "--help"
  end
end
