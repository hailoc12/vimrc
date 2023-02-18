#!/bin/sh
set -e
export local_dir="vimrc"

sudo apt install neovim

# set neovim to use vim config
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# install Github Copilot
git clone https://github.com/github/copilot.vim \
   ~/.config/nvim/pack/github/start/copilot.vim

# install lib for YouCompleteMe to work correctly
python3 -m pip install --user --upgrade pynvim

# upgrade nodejs to 14x
sudo apt update
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs
node -v

# install coc.nvim for code complete
rm -rf ~/.local/share/nvim/site/pack/coc/start
mkdir -p ~/.local/share/nvim/site/pack/coc/start
cd ~/.local/share/nvim/site/pack/coc/start
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
nvim -c "helptags coc.nvim/doc/ | q"

echo "Notice: open neovim then enter command :Copilot setup to finish setup Github Copilot"

