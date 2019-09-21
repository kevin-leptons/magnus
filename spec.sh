PKG_NAME="magnus"
PKG_VERSION="5.0.0"
BUILD_DATE=$(date)
PLATFORM=$(uname)

if [[ "$PLATFORM" == "Linux" ]]; then
	function sed_replace() {
		sed -i -e "$1" "$2"
	}
elif [[ "$PLATFORM" == "Darwin" ]]; then
	function sed_replace() {
		sed -i "" -e "$1" "$2"
	}
else
	echo "Does not support platform '$PLATFORM'"
	exit 1
fi
