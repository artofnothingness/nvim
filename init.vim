lua require('plugins')

lua require('config.floaterm')
lua require('config.galaxy-line')
lua require('config.nv-tree')
lua require('config.quick-scope')
lua require('config.treesitter')
lua require('config.doge')
lua require('config.dashboard')
lua require('config.compe')
lua require('config.telescope')
lua require('config.bookmarks')

lua require('config.git.blame')
lua require('config.git.neo')
lua require('config.git.signs')

lua require('lsp')
lua require('lsp.python')
lua require('lsp.clangd')
lua require('lsp.kind')

lua require('maps')
lua require('settings')
lua require('colorscheme')
lua require('config.colorizer')

source $HOME/.config/nvim/vim-script/config/clang-format.vim
source $HOME/.config/nvim/vim-script/config/markdown.vim
source $HOME/.config/nvim/vim-script/config/rnvimr.vim
source $HOME/.config/nvim/vim-script/config/tmux.vim

source $HOME/.config/nvim/vim-script/maps/which-key.vim
source $HOME/.config/nvim/vim-script/maps/maps.vim
