lua require('plugins')

lua require('config.addons.dashboard')
lua require('config.addons.toggleterm')
lua require('config.addons.floaterm')
lua require('config.addons.tree')

lua require('config.navigation.quick-scope')
lua require('config.navigation.telescope')
lua require('config.navigation.tmux-navigator')

lua require('config.editing.doge')
lua require('config.editing.autopairs')

lua require('config.code')
lua require('config.code.python')
lua require('config.code.cpp')
lua require('config.code.kind')
lua require('config.code.signature')
lua require('config.code.treesitter')
lua require('config.code.compe')

lua require('config.git.blame')
lua require('config.git.neo')
lua require('config.git.signs')

lua require('maps')
lua require('settings')

lua require('config.look.galaxy-line')
lua require('config.look.colorscheme')
lua require('config.look.colorizer')

source $HOME/.config/nvim/vim-script/config/clang-format.vim
source $HOME/.config/nvim/vim-script/config/markdown.vim
source $HOME/.config/nvim/vim-script/config/rnvimr.vim

source $HOME/.config/nvim/vim-script/maps/which-key.vim
source $HOME/.config/nvim/vim-script/maps/maps.vim
