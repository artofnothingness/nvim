call plug#begin('~/.config/nvim/autoload/plugged')

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

Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vista.vim'

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'tpope/vim-fugitive'

Plug 'christianchiarulli/nvcode-color-schemes.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'justinmk/vim-sneak'

" New
Plug 'metakirby5/codi.vim'

call plug#end()
