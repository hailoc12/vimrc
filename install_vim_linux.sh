#!/bin/sh
set -e
export local_dir="vimrc"

# get all source codes
cd ~/$local_dir/
#git submodule update --init --recursive

#rm -rf vimrc/sources_non_forked/YouCompleteMe
#git clone https://github.com/ycm-core/YouCompleteMe vimrc/sources_non_forked/YouCompleteMe
# rm -rf vimrc/sources_non_forked/tlib
# git clone https://github.com/vim-scripts/tlib vimrc/sources_non_forked/tlib

#cd ~/$local_dir/vimrc/sources_non_forked/YouCompleteMe
#git submodule update --init --recursive

# cd ~/$local_dir/vimrc/sources_non_forked/tlib
# git submodule update --init --recursive

# replace current vim plugins with new plugins
sudo rm -rf ~/.vim_runtime
sudo cp -r ~/$local_dir/vimrc ~/.vim_runtime
sudo cp ~/$local_dir/my_configs.vim ~/.vim_runtime/vimrcs/

# fix can't write undo file
sudo chmod -R 755 ~/.vim_runtime

#install YouCompleteMe
sudo apt install build-essential python3-dev
sudo apt install cmake
# sudo snap install cmake --classic
# sudo apt-get install g++-8
#cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
#sudo chown -R $(whoami) ~/.vim_runtime/sources_non_forked/YouCompleteMe

sudo apt install golang-go
sudo apt install default-jre
sudo apt install npm

#CC=gcc-8 CXX=g++-8 python3 ./install.py --all

# install java

#update to the latest vim
sudo apt install software-properties-common
sudo add-apt-repository ppa:jonathonf/vim
sudo apt remove vim
sudo apt update
sudo apt install vim
sudo apt install exuberant-ctags
sudo apt-get install fzf

cd ~/.vim_runtime
./install_awesome_vimrc.sh

#install taglist
# sudo apt-get install exuberant-ctags

#install other python3 lib
# cd ~/$local_dir
# pip3 install -r requirements.txt

# fix undo error files
sudo chown -R $(whoami) ~/.vim_runtime

echo "Remember to set ANTHROPIC API KEY in nvim_config/init.lua before running nvim install"
