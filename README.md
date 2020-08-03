:warning: This project is deprecated. Please migrate to using Oracle's official OCI-CLI formula: https://formulae.brew.sh/formula/oci-cli:
```
brew update && brew install oci-cli
```


# homebrew-oci-cli

*Unofficial* [Homebrew](https://brew.sh/) formula for [Oracle Cloud Infrastructure (OCI) CLI](https://github.com/oracle/oci-cli).

## Install

```bash
$ brew install jpoon/homebrew-oci-cli/oci-cli
```

## Develop

**Updating Formula:**

1. Update software links

    ```bash
    $ brew edit oci-cli
    # Edit 'url' and remove 'sha256':
    #     url "https://github.com/oracle/oci-cli/archive/v2.4.39.tar.gz"
    ```

2. Extract sha256 hash

    ```bash
    $ brew fetch oci-cli --build-from-source

    ==> Fetching oci-cli from jpoon/oci-cli
    ==> Downloading https://github.com/oracle/oci-cli/archive/v2.4.39.tar.gz
    Already downloaded: /Users/jaspoon/Library/Caches/Homebrew/downloads/3702ccac08692a8dcd6f8c42a1a135319cf5657c6f100e6155c38fc5e364afb6--oci-cli-2.4.39.tar.gz
    SHA256: 8769c8571f645745ec2dcc4a35a4457d820d4d0abef1bc7665f5d8ed16633ccf
    Warning: Cannot verify integrity of 3702ccac08692a8dcd6f8c42a1a135319cf5657c6f100e6155c38fc5e364afb6--oci-cli-2.4.39.tar.gz
    A checksum was not provided for this resource
    For your reference the SHA256 is: 8769c8571f645745ec2dcc4a35a4457d820d4d0abef1bc7665f5d8ed16633ccf
    Resource: homebrew-virtualenv
    ==> Downloading https://files.pythonhosted.org/packages/4e/8b/75469c270ac544265f0020aa7c4ea925c5284b23e445cf3aa8b99f662690/virtualenv-16.1.0.tar.gz
    Already downloaded: /Users/jaspoon/Library/Caches/Homebrew/downloads/bda8bcde19a275fd9c84a7ec957593976e90dfd0e461a87f5698f1d2286c0197--virtualenv-16.1.0.tar.gz
    SHA256: f899fafcd92e1150f40c8215328be38ff24b519cd95357fa6e78e006c7638208
    ```

    Copy SHA256 string (e.g 8769c8571f645745ec2dcc4a35a4457d820d4d0abef1bc7665f5d8ed16633ccf)

3. Update formula with SHA256 hash

    ```bash
    $ brew edit oci-cli
    # Add:
    #    url "https://github.com/oracle/oci-cli/archive/v2.4.39.tar.gz"
    #    sha256 "8769c8571f645745ec2dcc4a35a4457d820d4d0abef1bc7665f5d8ed16633ccf"
    ```

4. Run test and audit

    ```bash
    $ brew test oci-cli
    $ brew audit --strict --online oci-cli
    ```
