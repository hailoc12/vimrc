#!/bin/sh
set -e
export local_dir="vimrc"

# get all source codes
git submodule update --init --recursive


# replace current vim plugins with new plugins
sudo rm -rf ~/.vim_runtime
sudo cp -r ~/$local_dir/vimrc ~/.vim_runtime
sudo cp ~/$local_dir/my_configs.vim ~/.vim_runtime/vimrcs/

cd ~/.vim_runtime
./install_awesome_vimrc.sh

#install YouCompleteMe
# sudo apt install build-essential cmake python3-dev
# cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
# sudo python3 install.py

#install taglist
# sudo apt-get install exuberant-ctags

#install other python3 lib
# cd ~/$local_dir
# pip3 install -r requirements.txt

