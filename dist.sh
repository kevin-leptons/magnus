#!/usr/bin/env bash

if [ -d dist ]; then
    rm -rf dist
fi
mkdir -vp dist/src
cp -r module/* dist/src

pkgbuild --identifier leptons.kevin.magnus \
    --root dist/src \
    --version 2.0.0 \
    dist/magnus.pkg
    
