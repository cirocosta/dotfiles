#!/bin/bash

dir=~/dotfiles
olddir=~/.dotfiles_old
files=".bashrc .zshrc .gitconfig .vimrc .vim"

mkdir -p $olddir
echo "Created $olddir as a backup"

cd $dir

for file in $files; do
	mv ~/$file $olddir
	ln -s $dir/$file ~/$file
done

