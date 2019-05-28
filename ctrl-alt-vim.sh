#!/bin/bash
#
# ctrl-alt-vim - a fork of vim-anywhere

# Original vim-anywhere
# Author: Chris Knadler
# Homepage: https://www.github.com/cknadler/vim-anywhere

# Open a temporary file with Vim. 
# When closed copy the contents to the system clipboard
# Remove temporary file

TMPFILE_DIR="$(mktemp -d /tmp/vim-anywhere.XXX)"
TMPFILE_TEMPLATE=doc-$(date +"%y%m%d%H%M%S").XXX
VIM_OPTS="--nofork -c startinsert"

# Use ~/.gvimrc.min or ~/.vimrc.min if one exists
VIMRC_PATH=($HOME/.gvimrc.min $HOME/.vimrc.min)

for vimrc_path in "${VIMRC_PATH[@]}"; do
    if [ -f $vimrc_path ]; then
        VIM_OPTS+=" -u $vimrc_path"
        break
    fi
done

TMPFILE="$(mktemp -p $TMPFILE_DIR -t $TMPFILE_TEMPLATE)"

function remove_tmp_dir() {
	rm -rf $TMPFILE_DIR
}

## Removes all temp files on exit and sigint
trap "remove_tmp_dir" EXIT SIGINT

# Linux
chmod o-r $TMPFILE # Make file only readable by you
gvim $VIM_OPTS $TMPFILE
cat $TMPFILE | xclip -selection clipboard

