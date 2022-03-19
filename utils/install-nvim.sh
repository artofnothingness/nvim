sudo apt update
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y 
sudo apt-get update 
sudo apt-get install neovim=0.7.0~ubuntu1+git202203110047-6170574d2-dd05b3569-194686d0d~ubuntu20.04.1 -y
sudo apt-get install clangd-12 ripgrep xclip -y
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
pip install cmake-language-server

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
