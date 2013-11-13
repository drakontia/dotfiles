#!/bin/bash

DOT_FILES=( .bashrc .ctags .dir_colors .gdbinit .gemrc .gitconfig .gitignore .inputrc .minttyrc .profile .simplenote.rc .rdebugrc .vimrc)

for file in ${DOT_FILES[@]}
do
    rm -f "$HOME/$file"
    ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done

