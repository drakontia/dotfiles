#!/bin/bash

DOT_FILES=( .bashrc .ctags .gdbinit .gemrc .gitconfig .gitignore .inputrc .irbrc .minttyrc .screenrc .vimrc .dir_colors .rdebugrc)

for file in ${DOT_FILES[@]}
do
    ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done

