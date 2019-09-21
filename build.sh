#!/usr/bin/env bash

set -e

source package/spec.sh

INSTALL_DIR="/opt/magnus"
PKG_DIR="dest$INSTALL_DIR"
BIN_FILE="dest/usr/local/bin/magnus"
MAN_FILE="dest/usr/share/man/man1/magnus.1"

git submodule init
git submodule update

rm -rf dest

mkdir -vp "$PKG_DIR"
rsync --exclude-from=dist_exclude -r vim/ "$PKG_DIR"

mkdir -vp "$(dirname "$BIN_FILE")"
cp cli.sh "$BIN_FILE"

INSTALL_DIR_ESCAPE=$(echo "$INSTALL_DIR" | sed 's/\//\\\//g')
sed_replace "s/\$VIM_PLUGIN_DIR/${INSTALL_DIR_ESCAPE}/g" \
    "$PKG_DIR/vimrc"

mkdir -vp "$(dirname "$MAN_FILE")"
cp doc/magnus.1.man $MAN_FILE
sed_replace "s/\$PKG_NAME/${PKG_NAME}/g" "$MAN_FILE"
sed_replace "s/\$PKG_VERSION/${PKG_VERSION}/g" "$MAN_FILE"
sed_replace "s/\$BUILD_DATE/${BUILD_DATE}/g" "$MAN_FILE"
gzip $MAN_FILE
