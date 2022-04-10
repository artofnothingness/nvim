sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update

sudo apt install libtool -y
sudo apt install libvterm-dev -y
sudo apt install libuv1-dev -y
sudo apt install libtool-bin -y
sudo apt install gettext  -y
sudo apt install unzip -y
sudo apt install clangd-12 ripgrep xclip -y
sudo apt install fd-find

pip3 install cmake-language-server
pip3 install pynvim

git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
sudo rm -rf neovim

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

