class PdfResizer < Formula
  include Language::Python::Virtualenv

  desc "Resize PDF files by scaling all pages"
  homepage "https://example.com/pdf-resizer"
  url "file:///Volumes/Development/pdf-resizer/pdf-resizer-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "ecdaa83e17aebb506b78a6b78f2ac68bd687293f3923208ca2529469d422e760"

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
