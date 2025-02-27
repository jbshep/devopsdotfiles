#!/bin/bash

# This script can be invoked one of two ways.
# Either
#     curl https://raw.githubusercontent.com/jbshep/devopsdotfiles/refs/heads/main/install.sh | bash
# Or
#     cd ~
#     git clone https://github.com/jbshep/devopsdotfiles .dotfiles
#     cd .dotfiles
#     ./install.sh link

files=(.vimrc .inputrc)

if [[ -n "$1" && "$1" == "link" ]]; then
    # Method 2: Git and link
    for f in ${files[@]}; do 
        ln -s $PWD/$f $HOME/$f
    done
else
    # Method 1: No git
    for f in ${files[@]}; do 
        wget https://raw.githubusercontent.com/jbshep/devopsdotfiles/refs/heads/main/$f
    done
fi




