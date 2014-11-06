#!/bin/bash

#installs vim (including vundle and ycm)

# 1.) create the vimrc
$HOME/.vim/create_vimrc.sh

# 2.) install vundle
$HOME/.vim/install_vundle.sh

# 3.) install all bundles by starting vim
vim +BundleInstall +qall

# 4.) install (and compile) YCM
$HOME/.vim/install_ycm.sh
