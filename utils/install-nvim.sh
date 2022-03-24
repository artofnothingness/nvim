sudo apt update
sudo apt install libtool -y
sudo apt install libvterm-dev -y
sudo apt install libuv1-dev -y
sudo apt install libtool-bin -y
sudo apt install gettext  -y
sudo apt-get install unzip -y

 git clone https://github.com/neovim/neovim.git
 cd neovim
 
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..

sudo rm -rf neovim
sudo apt-get install clangd-12 ripgrep xclip -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
pip install cmake-language-server

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

pip3 install pynvim
