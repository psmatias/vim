#!/usr/bin/env bash

VIM_FOLDER="${HOME}/.vim"

# only execute if there's no vim folder already
if [ ! -d "${VIM_FOLDER}" ]; then
    mkdir ${VIM_FOLDER}
    cp -r * ${VIM_FOLDER}
    ln -s ${VIM_FOLDER}/vimrc ${HOME}/.vimrc
    cd ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git
    vim +PackUpdate +q
fi

echo "Well Done! You can now delete this folder because a copy of it was created in: ${VIM_FOLDER}"
