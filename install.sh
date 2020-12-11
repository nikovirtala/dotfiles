#!/bin/sh

# install git prompt
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# add stuff to dotfiles
cat bashrc >>~/.bashrc
cat gitconfig >>~/.gitconfig
cat gitignore_global >>~/.gitignore_global
cat npmrc >>~/.npmrc
cat vimrc >>~/.vimrc
mkdir ~/.docker && cat docker/config.json >>~/.docker/config.json
