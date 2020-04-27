#!/bin/bash

if [[ $# -ne "1" ]]; then
    echo "$0 <folder to install>"
    exit -1
fi

INSTALL_FOLDER=$1
FROM=$PWD
IN="$(dirname "${BASH_SOURCE[0]}")"
THISFILE=$(basename "${BASH_SOURCE[0]}")

pre_install()
{
    cd $IN
}

run()
{
    for file in `find . -mindepth 1 -maxdepth 1 ! -name $THISFILE ! -name '.git*'`; do
        if [[ -d $INSTALL_FOLDER ]]; then
            echo "install $file to $INSTALL_FOLDER"
            cp -R $file $INSTALL_FOLDER
        fi
    done

}

post_install()
{
    if [[ -d $INSTALL_FOLDER ]]; then
        curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi
    cd $FROM
}

pre_install
run $1
post_install
