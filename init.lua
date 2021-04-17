require('plugins')

require('addons.toggleterm')
require('addons.floaterm')
require('addons.tree')

require('navigation.quick-scope')
require('navigation.telescope')
require('navigation.tmux-navigator')

require('editing.doge')
require('editing.autopairs')

require('code')
require('code.python')
require('code.cpp')
require('code.kind')
require('code.signature')
require('code.treesitter')
require('code.compe')

require('git.blame')
require('git.neo')
require('git.signs')

require('maps')
require('which-key')
require('settings')

require('look.galaxy-line')
require('look.colorscheme')
require('look.colorizer')
require('look.dashboard')

vim.cmd("source $HOME/.config/nvim/vim-script/config/clang-format.vim")
vim.cmd("source $HOME/.config/nvim/vim-script/config/markdown.vim")
vim.cmd("source $HOME/.config/nvim/vim-script/config/rnvimr.vim")
vim.cmd("source $HOME/.config/nvim/vim-script/maps/maps.vim")
