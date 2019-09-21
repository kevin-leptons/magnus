#!/usr/bin/env bash

set -e

source package/spec.sh

pkgbuild --identifier magnus \
	--root dest \
	--version ${PKG_VERSION} \
	--install-location /usr/local \
	dist/magnus_${PKG_VERSION}.pkg
