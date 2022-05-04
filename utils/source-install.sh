#!/bin/bash

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update

# Build deps
sudo apt install libtool -y
sudo apt install libvterm-dev -y
sudo apt install libuv1-dev -y
sudo apt install libtool-bin -y
sudo apt install gettext  -y
sudo apt install unzip -y

# Run deps
sudo apt install python3-pip clangd-12 ripgrep xclip -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
pip install cmake-language-server
pip install pynvim

git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
sudo rm -rf neovim

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
