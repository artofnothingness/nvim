sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim -y

sudo apt install python3-pip clangd-12 ripgrep xclip -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
pip install cmake-language-server
pip install pynvim

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
