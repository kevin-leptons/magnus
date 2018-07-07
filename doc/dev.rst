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

.. code-block:: bash

    git submodule init
    git submodule update

Update version in 'package/spec.sh' if it is required.

Then run script to create distribution file:

To create Debian package, run:

.. code-block:: bash

    ./debian_dist.sh

To create MacOS package, run:

.. code-block:: bash

    ./macos_dist.sh

If packaging is completed, a package file will be put in 'dist/' directory.
