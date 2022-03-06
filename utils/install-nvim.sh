sudo apt update
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y 
sudo apt-get update 
sudo apt-get install neovim -y
sudo apt-get install clangd-12 -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
