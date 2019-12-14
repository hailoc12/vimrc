#!/bin/sh
set -e
export local_dir="vimrc"

#init submodule
cd sources_non_forked/YouCompleteMe/
git submodule update --init --recursive

#delete old data and copy new one
sudo rm -rf ~/.vim_runtime
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
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
python3 install.py

#install taglist
sudo apt-get install exuberant-ctags

#install other python3 lib
pip3 install -r requirements.txt

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
