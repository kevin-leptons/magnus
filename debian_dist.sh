#!/usr/bin/env bash

set -e

./build_unix_fs.sh

source package/spec.sh

cp -r package/debian dest/DEBIAN
sed -i -e "s/\$PKG_NAME/${PKG_NAME}/g" dest/DEBIAN/control
sed -i -e "s/\$PKG_VERSION/${PKG_VERSION}/g" dest/DEBIAN/control

dpkg-deb --build -D dest/ dist/${PKG_NAME}_${PKG_VERSION}-0_all.deb
