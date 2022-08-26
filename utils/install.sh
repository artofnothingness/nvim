sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo add-apt-repository -y ppa:git-core/ppa

sudo apt update
sudo apt install neovim-runtime=`sudo apt policy neovim-runtime | grep "   0.8" | sed -n 1p | awk -F ' ' '{print $1}'` 
sudo apt install neovim=`sudo apt policy neovim | grep "   0.8" | sed -n 1p | awk -F ' ' '{print $1}'` -y

sudo apt install python3-pip ripgrep xclip ccls -y
pip install cmake-language-server
pip install pynvim

sudo apt-get install git -y

sudo apt update

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
