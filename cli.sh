#!/usr/bin/env bash

USER_VIMRC="$HOME/.vimrc"

cli_help() {
    echo "USAGE"
    echo "    magnus link       Enable for current user"
    echo "    magnus unlink     Disable for current user"
    echo "    magnus --help     Show this help"
    echo "    magnus --version  Show version"
    echo "REFERENCES"
    echo "    See more detail with 'man magnus'."
}

cli_link() {
    local BIN_DIR="$(cd "$(dirname ${BASH_SOURCE[0]})" && pwd)"
    local PKG_DIR="$BIN_DIR/../../../opt/magnus"
    local ABS_PKG_DIR="$(cd -P "$PKG_DIR" && pwd)"
    local VIMRC="$ABS_PKG_DIR/vimrc"

    ln -s "$VIMRC" "$USER_VIMRC"
}

cli_unlink() {
    rm -r $USER_VIMRC
}

cli_version() {
    echo "MAGNUS_VERSION"
}

case "$1" in
    "link")
        cli_link
        ;;
    "unlink")
	    cli_unlink
	    ;;
    "--help")
        cli_help
        ;;
    "--version")
        cli_version
        ;;
    *)
        cli_help
        ;;
esac
