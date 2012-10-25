#!/bin/bash

DOT_FILES=( .bashrc .ctags .gdbinit .gemrc .gitconfig .gitignore .vimrc .dir_colors .minttyrc .rdebugrc)

for file in ${DOT_FILES[@]}
do
    ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done

