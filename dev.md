# Development

## File System Structure

* `doc/`: Document files.
* `dest/`: Temporary build files.
* `dist/`: Distribution files.
* `vim/`: Source code of VIM's plugins.
* `package/`: Specification files for build distributed package.

## Create Distributed Package

* Update version in `package/spec.sh`
* Build then pack

```bash
make
make dist
```
