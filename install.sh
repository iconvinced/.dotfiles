#!/bin/bash

if [[ $# -ne "1" ]]; then
    echo "$0 <folder to install>"
    exit -1
fi

INSTALL_FOLDER=$1

INSTALL_FILES=(
    ".bash_profile"
    ".bash_logout"
    ".bash_linux"
    ".gitconfig"
    ".vimrc"
    ".tmux.conf"
    ".vim"
    "bin"
)

cd "$(dirname "${BASH_SOURCE[0]}")"

git submodule update --init

echo "install .dotfiles to $INSTALL_FOLDER:"
if [[ -d $INSTALL_FOLDER ]]; then
    for file in ${INSTALL_FILES[@]}; do
        echo "    $file"
        cp -R $file $INSTALL_FOLDER
    done
fi

cd -

echo "done"
