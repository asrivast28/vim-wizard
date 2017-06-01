#!/bin/bash

# install requirements (ubuntu only)
if [ "$(whoami)" == "root" ]; then
  apt-get install build-essential cmake
  apt-get install python-dev
fi

# install Ycm
cd ~/.vim/bundle/YouCompleteMe
# checkout verified commit
git checkout 3066488ecf5cb289e1d93b56cc48041b5d3ec57c
# install
./install.py --clang-completer --enable-coverage
