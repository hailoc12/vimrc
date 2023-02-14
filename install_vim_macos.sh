#!/bin/sh
set -e
export local_dir="vimrc"

# get all source codes
rm -rf vimrc/sources_non_forked/YouCompleteMe
git clone https://github.com/ycm-core/YouCompleteMe vimrc/sources_non_forked/YouCompleteMe
rm -rf vimrc/sources_non_forked/tlib
git clone https://github.com/vim-scripts/tlib vimrc/sources_non_forked/tlib

cd ~/$local_dir/vimrc/sources_non_forked/YouCompleteMe
git submodule update --init --recursive
cd ~/$local_dir/vimrc/sources_non_forked/tlib
git submodule update --init --recursive
cd ~/$local_dir/

git submodule update --init --recursive

# replace current vim plugins with new plugins
sudo rm -rf ~/.vim_runtime
cp -r ~/$local_dir/vimrc ~/.vim_runtime
cp ~/$local_dir/my_configs.vim ~/.vim_runtime/vimrcs/

# fix can't write undo file
sudo chmod -R 755 ~/.vim_runtime

#install YouCompleteMe
brew install cmake python go nodejs
brew install mono
brew install java
sudo ln -sfn $(brew --prefix java)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install vim
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
python3 ./install.py --all --verbose

cd ~/.vim_runtime
./install_awesome_vimrc.sh

#install taglist
# sudo apt-get install exuberant-ctags

#install other python3 lib
# cd ~/$local_dir
# pip3 install -r requirements.txt

# fix undo error files
sudo chown -R $(whoami) ~/.vim_runtime
