class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://github.com/oracle/oci-cli/archive/v2.5.2.tar.gz"
  sha256 "de82797298bf7407a10ec417119fe19e842a4a3266bc43432cf6d54a70f2f4de"
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
