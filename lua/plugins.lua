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

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'liuchengxu/vista.vim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Quality of life improvements
  use 'norcalli/nvim_utils' 

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'romgrk/barbar.nvim'
  use 'glepnir/galaxyline.nvim' 

  -- Explorer
  use 'kyazdani42/nvim-tree.lua' -- NEW

  -- Colors and Themes
  use 'christianchiarulli/nvcode-color-schemes.vim' 
  use 'rafi/awesome-vim-colorschemes'
  use 'bluz71/vim-nightfly-guicolors'
  use 'kaicataldo/material.vim'
  use 'Shadorain/shadotheme'

  use 'norcalli/nvim-colorizer.lua'

  -- General Plugins

  use 'unblevable/quick-scope' 
  use 'airblade/vim-rooter'
  use 'windwp/nvim-autopairs'

  use 'kevinhwang91/rnvimr'
  use 'psliwka/vim-smoothie'
  use 'voldikss/vim-floaterm'

  use 'liuchengxu/vim-which-key'
  use 'glepnir/dashboard-nvim'

  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'mzlogin/vim-markdown-toc'
  use 'godlygeek/tabular'
  use 'dhruvasagarrkdownPreviewTogglec/vim-table-mode'

  use 'tpope/vim-commentary.git'
  use 'PotatoesMaster/i3-vim-syntax.git'
  use 'rhysd/vim-clang-format'

  use 'szw/vim-maximizer'
  use 'preservim/tagbar'
  use 'mbbill/undotree'

  -- Git
  use 'TimUntersberger/neogit'
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Telescope 
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'phaazon/hop.nvim'

  use {'kkoomen/vim-doge', run = ':call doge#install()'}
  -- NEW
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use 'MattesGroeger/vim-bookmarks'

end)
