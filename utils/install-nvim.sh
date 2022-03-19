sudo apt update
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y 
sudo apt-get update 
sudo apt-get install neovim=0.7.0~ubuntu1+git202203060047-d557a4557-dd05b3569-fddb81c5a~ubuntu20.04.1 -y
sudo apt-get install clangd-12 -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
pip install cmake-language-server
