#!/bin/sh
set -e
export local_dir="vimrc"
sudo cp -r ~/$local_dir ~/.vim_runtime

cd ~/.vim_runtime

echo "set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry" > ~/.vimrc

#install YouCompleteMe
sudo apt install build-essential cmake python3-dev

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
