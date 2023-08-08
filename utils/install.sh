sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo add-apt-repository -y ppa:git-core/ppa

sudo apt update
sudo apt install \
    neovim -y \
    git -y \
    python3-pip -y \
    ripgrep -y \
    xclip -y

pip install pynvim
