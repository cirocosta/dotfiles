#!/bin/bash

dir=~/dotfiles
olddir=~/.dotfiles_old
files=".bashrc .zshrc .xinitrc .gitconfig .vimrc .vim \
       .config/terminator .config/i3 .xmodmap .conkyrc"

mkdir -p $olddir
echo "Created $olddir as a backup"

cd $dir

for file in $files; do
	mv ~/$file $olddir
	ln -s $dir/$file ~/$file
done

