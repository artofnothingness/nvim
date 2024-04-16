sudo apt update
sudo apt install -y software-properties-common

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo add-apt-repository -y ppa:git-core/ppa

sudo apt update
sudo apt install \
    neovim -y \
    ranger -y \
    git -y \
    python3-pip -y \
    ripgrep -y \
    unzip -y \
    wget -y \
    npm -y \
    python3-venv -y \
    xclip -y

pip install pynvim
