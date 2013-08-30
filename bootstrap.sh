#!/bin/bash

if [[ $# -ne "1" ]]; then
    echo "$0 <folder to install>"
    exit -1
fi

INSTALL_FOLDER=$1

INSTALL_FILES=(
    ".bash_profile"
    ".gitconfig"
    ".vimrc"
    ".tmux.conf"
)

echo "install .dotfiles to $INSTALL_FOLDER:"
if [[ -d $INSTALL_FOLDER ]]; then
    for file in ${INSTALL_FILES[@]}; do
        echo "    $file"
        cp $file $INSTALL_FOLDER
    done
fi
echo "done"
