#!/bin/sh
set -e
export local_dir="vimrc"

cd ~/$local_dir

echo "set runtimepath+=~/$local_dir

source ~/$local_dir/vimrcs/basic.vim
source ~/$local_dir/vimrcs/filetypes.vim
source ~/$local_dir/vimrcs/plugins_config.vim
source ~/$local_dir/vimrcs/extended.vim

try
source ~/$local_dir/my_configs.vim
catch
endtry" > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
