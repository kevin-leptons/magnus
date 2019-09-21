# Installation

## For Debian-like OS

```bash
make
make debian
sudo dpkg -i dist/magnus_VERSION.deb
sudo apt install -f
magnus link             # enable for current user
vim                     # open VIM to use
```

* `VERSION` - magnus version, depend on building

## For other UNIX-like OS


```bash
make
make tarbar
tar -xf dist/magnus_VERSION.tar.gz --directory INSTALL_DIR
INSTALL_DIR/usr/local/bin/magnus link   # enable for current user
vim                                     # open VIM to use
```

* `VERSION` - magnus version, depend on building
* `INSTALL_DIR` - Install directory, user's choice
