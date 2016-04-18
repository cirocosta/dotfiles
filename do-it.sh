#!/bin/bash

readonly dir=~/dotfiles
readonly olddir=~/.dotfiles_old
readonly files=".bashrc .zshrc .gitconfig .vimrc .vim"
readonly bin_dir="${dir}/bin"


mkdir -p $olddir
echo "Created $olddir as a backup"

cd $dir

for file in $files; do
	mv ~/$file $olddir
	ln -s $dir/$file ~/$file
done

for file in ${bin_dir}/*; do
  ln -s $(realpath $file) /usr/local/bin/$file)
done
