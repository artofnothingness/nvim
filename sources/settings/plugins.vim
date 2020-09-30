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

   Plug 'https://github.com/taketwo/vim-ros.git'
   Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'
   Plug 'vuciv/vim-bujo'
   Plug 'ThePrimeagen/vim-be-good'
   Plug 'nvim-treesitter/nvim-treesitter'
   Plug 'sbdchd/neoformat'

   " New

   " LSP 
   " Plug 'neovim/nvim-lspconfig'
   " Plug 'nvim-lua/completion-nvim'
   " Plug 'tjdevries/nlua.nvim'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'jackguo380/vim-lsp-cxx-highlight'
   Plug 'liuchengxu/vista.vim'

   " Better Syntax Support
   Plug 'sheerun/vim-polyglot'

   " File Explorers
   Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

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

   Plug 'sainnhe/gruvbox-material'
   Plug 'kaicataldo/material.vim', { 'branch': 'main' }
   Plug 'whatyouhide/vim-gotham'
   Plug 'joshdick/onedark.vim'
   Plug 'reewr/vim-monokai-phoenix'
   Plug 'https://github.com/cocopon/iceberg.vim.git'

   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'

   " Markdown
   Plug 'godlygeek/tabular'
   Plug 'plasticboy/vim-markdown'
   Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
   Plug 'ajorgensen/vim-markdown-toc'

   "Tex
   Plug 'lervag/vimtex'

call plug#end()
