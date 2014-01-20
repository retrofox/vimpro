#!/usr/bin/env bash

dir=~
vim_rc="$dir/.vimrc"
vim_bck_rc="$dir/._vimrc_bck"
vim_dir="$dir/.vim"
vim_bck_dir="$dir/._vim_bck"

current=${PWD}
vimpro_dir="$current/.vim/"
vimpro_rc="$current/.vimrc"

# vim dir
if [ -d "$vim_dir" ]; then 
  mv "$vim_dir" "$vim_bck_dir"
fi
ln -s $vimpro_dir $vim_dir

# vim_rc
if [ -f "$vim_rc" ]; then
  mv "$vim_rc" "$vim_bck_rc"
fi
ln -s $vimpro_rc $vim_rc

mkdir "$vim_dir/undo"
chmod 777 "$vim_dir/undo"
