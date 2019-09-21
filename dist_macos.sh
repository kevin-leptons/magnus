#!/usr/bin/env bash

set -e

source spec.sh
TAR_NAME="magnus_${PKG_VERSION}"

rm -rf dist
mkdir -vp dist
if ! [ -d dest ]; then
    echo "No build files"
    exit 1
fi
cp -r dest "dist/$TAR_NAME"
tar --directory dist -czvf "dist/${TAR_NAME}.tar.gz" "$TAR_NAME"
rm -rf "dist/$TAR_NAME"
