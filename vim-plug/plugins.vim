" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall
      autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

   " General
    Plug 'https://github.com/tpope/vim-commentary.git'
    Plug 'majutsushi/tagbar'
    Plug 'jiangmiao/auto-pairs'

    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key'   
    Plug 'voldikss/vim-floaterm'
    Plug 'preservim/nerdtree'


    Plug 'https://github.com/easymotion/vim-easymotion.git'
    Plug 'junegunn/vim-easy-align'
    Plug 'https://github.com/tpope/vim-surround.git'
    Plug 'honza/vim-snippets'

    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-rooter'
    Plug 'frazrepo/vim-rainbow'

    Plug 'https://github.com/taketwo/vim-ros.git'
    Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'
    " New

    " Coc.nvim 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'liuchengxu/vista.vim'


    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorers
    Plug 'francoiscabrol/ranger.vim'

    " Navigation
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Git 
    Plug 'https://github.com/airblade/vim-gitgutter.git'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'rbong/vim-flog'

    " Themes
    Plug 'ryanoasis/vim-devicons'
    Plug 'ayu-theme/ayu-vim'
    Plug 'whatyouhide/vim-gotham'
    Plug 'joshdick/onedark.vim'
    Plug 'liuchengxu/space-vim-theme'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'reewr/vim-monokai-phoenix'
    Plug 'https://github.com/cocopon/iceberg.vim.git'
    Plug 'junegunn/seoul256.vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
    Plug 'ajorgensen/vim-markdown-toc'

call plug#end()
