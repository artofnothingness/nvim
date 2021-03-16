local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  -- Quality of life improvements
  use 'norcalli/nvim_utils' 

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow' -- NEW

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'romgrk/barbar.nvim'
  use 'glepnir/galaxyline.nvim' 

  -- Explorer
  use 'kyazdani42/nvim-tree.lua' -- NEW

  -- Color
  use 'christianchiarulli/nvcode-color-schemes.vim' 
  use 'rafi/awesome-vim-colorschemes'
  use 'bluz71/vim-nightfly-guicolors'
  use 'norcalli/nvim-colorizer.lua'
  use 'kaicataldo/material.vim'

  -- General Plugins
  use 'unblevable/quick-scope' 
  use 'airblade/vim-rooter'
  use 'kevinhwang91/rnvimr'
  use 'psliwka/vim-smoothie'
  use 'voldikss/vim-floaterm'

  use 'liuchengxu/vim-which-key'
  use 'mhinz/vim-startify'

  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'mzlogin/vim-markdown-toc'
  use 'godlygeek/tabular'
  use 'dhruvasagar/vim-table-mode'

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary.git'
  use 'PotatoesMaster/i3-vim-syntax.git'
  use 'rhysd/vim-clang-format'

  use 'szw/vim-maximizer'

  use 'neoclide/coc.nvim'
  use 'preservim/tagbar'
  use 'mbbill/undotree'

  -- Git
  use 'TimUntersberger/neogit'
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'

  -- Telescope 
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

end)
