call plug#begin('~/.config/nvim/autoload/plugged')

" New
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'liuchengxu/vim-which-key'
Plug 'voldikss/vim-floaterm'
Plug 'honza/vim-snippets'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'airblade/vim-rooter'
Plug 'https://github.com/taketwo/vim-ros.git'
Plug 'https://github.com/PotatoesMaster/i3-vim-syntax.git'
Plug 'rhysd/vim-clang-format'

Plug 'romgrk/barbar.nvim'
Plug 'szw/vim-maximizer'

Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'

Plug 'justinmk/vim-sneak'
Plug 'preservim/tagbar'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'tpope/vim-fugitive'

" Themes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

call plug#end()
