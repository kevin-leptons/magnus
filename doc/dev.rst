Development
***********

File System Structure
=====================

* 'doc/': Document files.
* 'module/': Source code of VIM's plugins.
* 'dest/': Temporary build files.
* 'dist/': Distribution files.
* 'package/': Specification files for packaging.

Create Distribution Package
===========================

Update submodule if it is required:

    $ git submodule init
    $ git submodule update

Update version in 'package/spec.sh' if it is required. 

Then run script to create distribution file:

To create Debian package, run:

    $ ./debian_dist.sh

To create MacOS package, run:

    $ ./macos_dist.sh

If packaging is complete, a package file will be put in 'dist/' directory.
