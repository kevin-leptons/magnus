magnus
******

* License: GPLv2
* Author: Kevin Leptons <kevin.leptons@gmail.com>
* Version: v3

**magnus** is software development tool kit for C, C++, Python. It is not a
program, it is meta package. It provides minimum environment for develop
without effort to install related packages and write config files.

Install
=======

There are two operating system is supported:

* Debian 8.x.

**magnus** still works on other versions of supported Operating System but it
is not guaranteed. There are not enough resources to test all of that.

**magnus** is not avaiable on main package stream of operating system so it is
imposible to install via package manager. Please get a download a pre-build
package from:

* Debian: https://drive.google.com/open?id=1kMLvcZHajJbT-gm8c5VurjfVHF3qo4EC

Then install follow instruction.

.. code-block:: bash

    # there are complain about missing dependency package when
    # run this command, don't worry, just ignore it
    dpkg -i DEBIAN_PACKAGE_FILE.deb
    apt-get install -f

Usage
=====

After installation, VIM's plugin is not activated. To activate, run:

.. code-block:: bash

    magnus link

Now VIM is ready to use. See more manual in man page:

.. code-block:: bash

    man magnus

Development
===========

See 'doc/dev.rst' and 'changelog.rst'.
