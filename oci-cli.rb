class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://github.com/oracle/oci-cli/archive/v2.8.2.tar.gz"
  sha256 "ef064a2c35e5042ddd83b180a24bcd4372c240e779c36066d4c43952f0a49ebb"
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
