#!/bin/sh
set -e
export local_dir="vimrc"

# set neovim to use vim config
rm -rf ~/.config/nvim/*
ln -s ~/.vimrc ~/.config/nvim/init.vim

# install Github Copilot
git clone https://github.com/github/copilot.vim \
   ~/.config/nvim/pack/github/start/copilot.vim

# install lib for YouCompleteMe to work correctly
python3 -m pip install --user --upgrade pynvim

echo "Notice: open neovim then enter command :Copilot setup to finish setup Github Copilot"
