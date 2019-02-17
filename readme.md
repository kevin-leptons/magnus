# magnus

* License: GPLv2
* Author: Kevin Leptons <kevin.leptons@gmail.com>
* Version: v3

**magnus** is software development tool kit for C, C++, Python. It is not a
program, it is meta package. It provides minimum environment for develop
without effort to install related packages and write config files.

## Install

There are only one Operating System is supported: Debian-like

```bash
curl -s https://packagecloud.io/install/repositories/kevin_leptons/trop/script.deb.sh | sudo bash
apt update
apt install magnus
```

## Usage

After installation, VIM's plugin is not activated. To activate for current
user:

```bash
magnus link
```

Now VIM, C and C++ compiler... is ready to use. See more manual in man page:

```bash
man magnus
```

## References

* [Changelog](changelog.md)
* [Contribution](contribution.md)
* [Development](doc/dev.md)
