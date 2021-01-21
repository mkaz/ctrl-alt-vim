#!/bin/bash
#
# ctrl-alt-vim - a fork of vim-anywhere

# Original vim-anywhere
# Author: Chris Knadler
# Homepage: https://www.github.com/cknadler/vim-anywhere

# Open a temporary file with Vim.
# When closed copy the contents to the system clipboard
# Remove temporary file

# nvim-qt installs a gvim symlink
if hash gvim 2>/dev/null; then
	BIN=gvim
else
	echo "Please install nvim-qt or gvim"
	exit
fi

TMPFILE_DIR="$(mktemp -d /tmp/ctrl-alt-vim.XXX)"
TMPFILE="${TMPFILE_DIR}/vim-$(date +"%y%m%d%H%M%S").md"
VIM_OPTS="--nofork"

function remove_tmp_dir() {
	rm -rf $TMPFILE_DIR
}

## Removes all temp files on exit and sigint
trap "remove_tmp_dir" EXIT SIGINT

# Linux
chmod o-r $TMPFILE # Make file only readable by you

# open file in vim
$BIN $VIM_OPTS $TMPFILE

# on exit, copy file to clipboard
cat $TMPFILE | xclip -selection clipboard

