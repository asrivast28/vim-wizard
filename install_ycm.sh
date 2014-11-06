#!/bin/bash

# install requirements (ubuntu only)
if [ "$(whoami)" == "root" ]; then
  apt-get install build-essential cmake
  apt-get install python-dev
fi

# install Ycm
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
