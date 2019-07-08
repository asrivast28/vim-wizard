#!/bin/bash

# install requirements (ubuntu only)
if [ "$(whoami)" == "root" ]; then
  apt install build-essential cmake
  apt install python-dev
fi

# install Ycm
cd ~/.vim/bundle/YouCompleteMe
# install
./install.py --clang-completer --enable-coverage
