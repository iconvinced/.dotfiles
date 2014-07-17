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

    git submodule update --init
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O &> /dev/null
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
    cd $FROM
}

pre_install
run $1
post_install
