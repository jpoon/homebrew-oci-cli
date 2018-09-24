class OciCli < Formula
    include Language::Python::Virtualenv

    desc "Oracle Cloud Infrastructure CLI"
    homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
    url "https://github.com/oracle/oci-cli/archive/v2.4.32.tar.gz"
    sha256 "84e0c308d330d73c01e36db65745b82cdfbb7d051834327a3fa9a2be4fb008f7"
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
      assert_match "Oracle Cloud Infrastructure", shell_output("#{bin}/oci help")
    end
  end
  