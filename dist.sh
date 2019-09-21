#!/usr/bin/env bash

set -e

source spec.sh

if [[ "$PLATFORM" == "Linux" ]]; then
	bash dist_debian.sh
elif [[ "$PLATFORM" == "Darwin" ]]; then
	bash dist_macos.sh
else
	echo "Does not support pack on platform '$PLATFORM'"
	exit 1
fi
