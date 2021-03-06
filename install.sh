#!/bin/sh
set -e
export local_dir="vimrc"

# get all source codes
git submodule update --init --recursive

# replace current vim plugins with new plugins
sudo rm -rf ~/.vim_runtime
sudo cp -r ~/$local_dir/vimrc ~/.vim_runtime
sudo cp ~/$local_dir/my_configs.vim ~/.vim_runtime/vimrcs/

# fix can't write undo file
sudo chmod -R 755 ~/.vim_runtime

#install YouCompleteMe
sudo apt install build-essential python3-dev
sudo snap install cmake --classic
sudo apt-get install g++-8
sudo apt install libstdc++6
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
CC=gcc-8 CXX=g++-8 sudo python3 ./install.py --all

# install java
sudo apt install default-jre

#update to the latest vim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

cd ~/.vim_runtime
./install_awesome_vimrc.sh

#install taglist
# sudo apt-get install exuberant-ctags

#install other python3 lib
# cd ~/$local_dir
# pip3 install -r requirements.txt

# fix undo error files
sudo chown -R $(whoami) .vim_runtime
