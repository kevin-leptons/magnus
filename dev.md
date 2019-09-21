# Development

## File System Structure

* `doc/`: Document files
* `dest/`: Temporary build files
* `dist/`: Distribution files
* `plugin/`: VIM's plugins

## Create Debian-like Package

* Update version in `spec.sh`
* Build then pack

```bash
make
make dist-debian        # output to dist/magnus_VERSION.deb
```

## Create Tarbar Package

* Update version in `spec.sh`
* Build then pack

```bash
make
make dist-tarbar        # output to dist/magnus_VERSION.tar.gz
```
