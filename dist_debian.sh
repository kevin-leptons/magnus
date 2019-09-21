#!/usr/bin/env bash

set -e

source package/spec.sh

cp -r package/debian dest/DEBIAN
sed_replace "s/\$PKG_NAME/${PKG_NAME}/g" dest/DEBIAN/control
sed_replace "s/\$PKG_VERSION/${PKG_VERSION}/g" dest/DEBIAN/control

mkdir -vp dist
dpkg-deb --build -D dest/ dist/${PKG_NAME}_${PKG_VERSION}-0_all.deb
