#!/usr/bin/env bash

set -e

./build_unix_fs.sh

source package/spec.sh

pkgbuild --identifier leptons.kevin.magnus \
    --root dest \
    --version ${PKG_VERSION} \
    dist/magnus_${PKG_VERSION}.pkg
