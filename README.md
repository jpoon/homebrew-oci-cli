# homebrew-oci-cli

*Unofficial* [Homebrew](https://brew.sh/) formula for [Oracle Cloud Infrastructure (OCI) CLI](https://github.com/oracle/oci-cli).

## Install

```bash
$ brew install philchung/homebrew-oci-cli/oci-cli
```

## Develop

**Updating Formula:**

1. Update software links

    ```bash
    $ brew edit oci-cli
    # Edit 'url' and remove 'sha256':
    #     url "https://github.com/oracle/oci-cli/archive/v2.5.21.tar.gz"
    ```

2. Extract sha256 hash

    ```bash
    $ brew fetch oci-cli --build-from-source
    ==> Fetching oci-cli from philchung/oci-cli
    ==> Downloading https://github.com/oracle/oci-cli/archive/v2.5.21.tar.gz
    Already downloaded: /Users/philchung/Library/Caches/Homebrew/downloads/70241bb570c0865846e370d08459007f57a70f0fda9f988d4a862a122ac2e645--oci-cli-2.5.21.tar.gz
    SHA256: 1f1c9efedb49028c27eb10b05707d7b481de1977bd4e882f6602859f350400ce
    Resource: homebrew-virtualenv
    ==> Downloading https://files.pythonhosted.org/packages/a9/8a/580c7176f01540615c
    Already downloaded: /Users/philchung/Library/Caches/Homebrew/downloads/93188db770e5a2cc745d843c379ae7f650e2198f127a55a5aa3758689f60b5c4--virtualenv-16.7.2.tar.gz
    SHA256: 909fe0d3f7c9151b2df0a2cb53e55bdb7b0d61469353ff7a49fd47b0f0ab9285
    ```

    Copy SHA256 string (e.g 1f1c9efedb49028c27eb10b05707d7b481de1977bd4e882f6602859f350400ce)

3. Update formula with SHA256 hash

    ```bash
    $ brew edit oci-cli
    # Add:
    #    url "https://github.com/oracle/oci-cli/archive/v2.5.21.tar.gz"
    #    sha256 "1f1c9efedb49028c27eb10b05707d7b481de1977bd4e882f6602859f350400ce"
    ```

4. Run test and audit

    ```bash
    $ brew test oci-cli
    $ brew audit --strict --online oci-cli
    ```
