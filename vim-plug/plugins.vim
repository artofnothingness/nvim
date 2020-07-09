" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

   " General
    Plug 'https://github.com/taketwo/vim-ros.git'
    Plug 'https://github.com/tpope/vim-commentary.git'
    Plug 'majutsushi/tagbar'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mhinz/vim-startify'
    Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'
    Plug 'liuchengxu/vim-which-key'   

    " Coc.nvim 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'rbgrouleff/bclose.vim'
    Plug 'francoiscabrol/ranger.vim'

    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Navigation
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'https://github.com/easymotion/vim-easymotion.git'
    Plug 'justinmk/vim-sneak'

    " Git 
    Plug 'https://github.com/airblade/vim-gitgutter.git'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'

    " Themes
    Plug 'whatyouhide/vim-gotham'
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
    Plug 'ajorgensen/vim-markdown-toc'

call plug#end()
