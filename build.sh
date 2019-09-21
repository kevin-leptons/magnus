#!/usr/bin/env bash

set -e

git submodule init
git submodule update

source package/spec.sh

rm -rf dest dist
mkdir -vp dest dist

mkdir -vp dest/share
cp -r vim dest/share/magnus

mkdir -vp dest/bin
cp cli.sh dest/bin/magnus

sed -i "" -e "s/\$VIM_PLUGIN_DIR/${VIM_PLUGIN_DIR}/g" dest/share/magnus/vimrc

mkdir -vp $MAN_DIR
cp doc/magnus.1.man $MAN_FILE
sed -i "" -e "s/\$PKG_NAME/${PKG_NAME}/g" $MAN_FILE
sed -i "" -e "s/\$PKG_VERSION/${PKG_VERSION}/g" $MAN_FILE
sed -i "" -e "s/\$BUILD_DATE/${BUILD_DATE}/g" $MAN_FILE
gzip $MAN_FILE

