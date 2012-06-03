#!/bin/bash

DOT_FILES=( .zsh .zshrc .zshrc.alias .zshrc.linux .zshrc.osx .ctags .gdbinit .gemrc .gitconfig .gitignore .inputrc .irbrc .screenrc .vimrc .dir_colors .rdebugrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

