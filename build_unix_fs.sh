#!/usr/bin/env bash

set -e

git submodule init
git submodule update

source package/spec.sh

BUILD_DATE=$(date)

rm -rf dest dist
mkdir -vp dest dist

mkdir -vp dest/etc
cp -r vim dest/etc/magnus

VIM_PLUGIN_DIR="\/etc\/$PKG_NAME"
sed -i '' -e "s/\$VIM_PLUGIN_DIR/${VIM_PLUGIN_DIR}/g" dest/etc/magnus/vimrc

MAN_DIR=dest/usr/share/man/man1
MAN_FILE=$MAN_DIR/magnus.1
mkdir -vp $MAN_DIR
cp doc/magnus.1.man $MAN_FILE
sed -i '' -e "s/\$PKG_NAME/${PKG_NAME}/g" $MAN_FILE
sed -i '' -e "s/\$PKG_VERSION/${PKG_VERSION}/g" $MAN_FILE
sed -i '' -e "s/\$BUILD_DATE/${BUILD_DATE}/g" $MAN_FILE
gzip $MAN_FILE
