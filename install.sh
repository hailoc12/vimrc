#!/bin/sh
set -e
export local_dir="vimrc"

# get all source codes
git submodule update --init --recursive


# replace current vim plugins with new plugins
sudo rm -rf ~/.vim_runtime
sudo cp -r ~/$local_dir ~/.vim_runtime

cd ~/.vim_runtime

# add vim_runtime to vim runtimepath (install all plugins in this folders)
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
sudo python3 install.py

#install taglist
sudo apt-get install exuberant-ctags

#install other python3 lib
cd ~/$local_dir
pip3 install -r requirements.txt

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
