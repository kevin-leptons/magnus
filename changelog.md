# Changelog

## v4.0.0

* Use [trop/vspec](https://github.com/kevin-leptons/trop_vspec) for versioning
* Add: Allow mouse on terminal
* Change: User markdown for document
* Remove: Move cursor to middle of screen automatically

## v3.0.0

* Drop support for macOS.
* Enable nowrap for VIM mode.
* Move package from "/etc/magnus" to "/usr/share/magnus".
* Command window is half of window size.
* Add magnus CLI.

## v2.0.0

This version is new completely. It does not version which is fixes bugs
from older versions.

* Support MacOS 10.x Operating System. It can works on other version but that
  is not guaranteed.
* Support Debian 8.x Operating System. It can works on other Debian versions
  or other Debian based Operating System but that is not guaranteed.
* VIM with plugins, support for text editor and file navigation.
* C, C++ compiler, debuger. Depend on Operatin System, compiler and debuger is
  different.
* Python v2.x and v3.x.

## v0.13.0

* Dev: Fix wrong "ctl build-doc"

## v0.12.0

* Add cgdb, g++ package
* Improve command-t ignore files
* Use 4 spaces for tab

## v0.11.0

* Remove tagbar and nerdtree
* Turn off syntax higlight
* Change comments style
* Fix missing session current directory
* Add C++ completion to ycm_extra_conf
* Use :make command with <F5>, <F7> and <F8> to debug C/C++

## v0.10.0

* Fix YouCompleteMe configuration
* Add column number into statusline
* Change indent and tab size to 8 spaces
* Add tagbar plugin to show functions in file
* Add nerdtree plugin to show file system

## v0.9.0

* Fix misspelled documents
* Fix multi-load session at opening
* Fix vim-autopairs error when restore session
* Display relative instead of absolute file path when restore session

## v0.8.0

* Add git into dependency package
* Add auto save/load session

## v0.7.0

* Custom statusline and show by default
* Enable YouCompleteMe in text file
* Enable and custom syntax higlight
* Enable wildmenu
* Delay Command-T search by 300ms and improve UI
* Improve other highlights

## v0.6.0

* Upgrade to Debian 9
* Upgrade VIM v8.0
* Upgrade command-t
* Fix missing vim-nox package
* Remove wrong dependency packages

## v0.5.0

* Change right align to 80 characters
* Auto break line at 78 characters
* Add command-t ignore directory: cmake-build-debug
* Fix Ctrl + F, Ctrl + B, PageUp and PageDown

## v0.4.0

* Turn off highlight bracket
* Keep cursor at middle of screen
* Keep curosor during scroll by Ctrl + F, Ctrl + B, Page Up, Page Down
* Do not change page during type search
* Remove reserved line when next and prev page

## v0.3.0

* Fix command line error
* Remove syntax higlight
* Add ignore directories of command-t: venv, __pycache__

## v0.2.0

* Remove vim-auto-save
* Remove incsearch-fuzzy
* Use F10, F12 to save from buffer to disk
* Use SPACE to enable search and motion instead of /

## v0.1.0

* Add GCC, GDB, CMake
* Add Python2, Python3
* Add VIM editor
* Add YouCompleteMe - VIM auto complete
* Add vim-auto-save - VIM auto save file
* Add auto-pairs - VIM auto close brackets
* Add command-t - VIM quick open file
* Add nerdcommenter - VIM quick comment block of characters
* Add vim-easymotion, incsearch, incsearch-fuzzy, incsearch-easymotion - VIM
  quick search and move