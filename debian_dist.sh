#!/usr/bin/env bash

set -e

source package/spec.sh

BUILD_DATE=$(date)

rm -rf dest dist
mkdir -vp dest/etc/vim dist
cp -r vim dest/etc/vim/magnus

cp -r vim/vimrc.local dest/etc/vim 
VIM_PLUGIN_DIR="\/etc\/vim\/$PKG_NAME"
sed -i -e "s/\$VIM_PLUGIN_DIR/${VIM_PLUGIN_DIR}/g" dest/etc/vim/vimrc.local

cp -r package/debian dest/DEBIAN
sed -i -e "s/\$PKG_NAME/${PKG_NAME}/g" dest/DEBIAN/control
sed -i -e "s/\$PKG_VERSION/${PKG_VERSION}/g" dest/DEBIAN/control

MAN_DIR=dest/usr/share/man/man1
MAN_FILE=$MAN_DIR/magnus.1
mkdir -vp $MAN_DIR
cp doc/magnus.1.man $MAN_FILE
sed -i -e "s/\$PKG_NAME/${PKG_NAME}/g" $MAN_FILE
sed -i -e "s/\$PKG_VERSION/${PKG_VERSION}/g" $MAN_FILE
sed -i -e "s/\$BUILD_DATE/${BUILD_DATE}/g" $MAN_FILE
gzip $MAN_FILE

dpkg-deb --build -D dest/ dist/${PKG_NAME}_${PKG_VERSION}-0_all.deb
