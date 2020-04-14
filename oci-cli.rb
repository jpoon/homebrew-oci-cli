class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://github.com/oracle/oci-cli/archive/v2.9.11.tar.gz"
  sha256 "da0325047773ab156fa64590fcb9c22cc91a9c15ad1450ae5b46e2c070ad0dec"
  head "https://github.com/oracle/oci-cli.git"

  depends_on "python"

  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-v", "--no-binary", ":all:",
                                "--ignore-installed", buildpath

    venv.pip_install_and_link buildpath

    bin.install_symlink libexec/"bin/oci"
  end

  test do
    system "#{bin}/oci"
  end
end
