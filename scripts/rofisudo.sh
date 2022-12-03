#!/bin/sh
# rofisudo <command>
# made by mietinen https://github.com/mietinen/.dot-desktop/blob/master/.local/bin/desktop/rofisudo

case "$1" in
    *\[sudo\]*) rofi -password -no-fixed-num-lines -dmenu -p "$*" ;;
    *) SUDO_ASKPASS="$(realpath "$0")" sudo -A "$@" ;;
esac

# vim: set ts=4 sw=4 tw=0 et :
