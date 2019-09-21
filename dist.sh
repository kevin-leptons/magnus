#!/usr/bin/env bash

set -e

source package/spec.sh

UNAME=$(uname)
if [[ "$UNAME" == "Linux" ]]; then
	bash debian_dist.sh
elif [[ "$UNAME" == "Darwin" ]]; then
	bash macos_dist.sh
else
	echo "Does not support package on platform $UNAME"
	exit 1
fi
