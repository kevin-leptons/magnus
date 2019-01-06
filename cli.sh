#!/usr/bin/env bash

USER_VIMRC="$HOME/.vimrc"

cli_help() {
    echo "USAGE"
    echo "    $0 link. Enable for current user"
    echo "    $0 unlink. Disable for current user"
    echo "    $0 --help. Show this help"
    echo "REFERENCES"
    echo "    See more detail with 'man magnus'."
}

cli_link() {
    ln /usr/share/magnus/vimrc $USER_VIMRC 
}

cli_unlink() {
    if [ -f $USER_VIMRC ]; then
        rm $USER_VIMRC
    fi
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
    *)
        cli_help
        ;;
esac
