call plug#begin('~/.config/nvim/autoload/plugged')


" General
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
" Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'airblade/vim-rooter'
Plug 'https://github.com/taketwo/vim-ros.git'
Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'
Plug 'vuciv/vim-bujo'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ianding1/leetcode.vim'
Plug 'rhysd/vim-clang-format'
Plug 'romgrk/barbar.nvim'
Plug 'ntpeters/vim-better-whitespace'

" New
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'tjdevries/nlua.nvim'

" Plug 'nvim-lua/completion-nvim'
" Plug 'steelsojka/completion-buffers'
" Plug 'kristijanhusak/completion-tags'
Plug 'nvim-treesitter/completion-treesitter'

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
Plug 'sainnhe/gruvbox-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'joshdick/onedark.vim'

Plug 'hardcoreplayers/spaceline.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'ajorgensen/vim-markdown-toc'

"Tex
Plug 'lervag/vimtex'

call plug#end()
