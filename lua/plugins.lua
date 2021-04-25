local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}

  use { 'AckslD/nvim-whichkey-setup.lua', requires = {'liuchengxu/vim-which-key'}, }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  -- Code 
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'ray-x/lsp_signature.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'hrsh7th/nvim-compe'
  use 'rhysd/vim-clang-format'
  use {'kkoomen/vim-doge', run = ':call doge#install()'}

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Look 
  use 'folke/tokyonight.nvim'
  use 'artofnothingness/doom-one.vim'
  use 'norcalli/nvim-colorizer.lua'
  use 'romgrk/barbar.nvim'
  use 'glepnir/galaxyline.nvim' 
  use 'psliwka/vim-smoothie'
  use 'preservim/tagbar'
  use 'glepnir/dashboard-nvim'

  -- Addons 
  use 'kevinhwang91/rnvimr'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  -- use 'dhruvasagarrkdownPreviewTogglec/vim-table-mode'
  use 'voldikss/vim-floaterm'
  use 'mzlogin/vim-markdown-toc'
  use 'mbbill/undotree'
  use 'akinsho/nvim-toggleterm.lua'
  use 'kyazdani42/nvim-tree.lua'

  -- Navigation 
  use 'unblevable/quick-scope' 
  use 'airblade/vim-rooter'
  use 'nvim-telescope/telescope.nvim'
  use 'phaazon/hop.nvim'
  use 'numToStr/Navigator.nvim' 

  -- Editing 
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-commentary.git'
  use 'godlygeek/tabular'
  use 'szw/vim-maximizer'
  use 'lambdalisue/suda.vim'

  -- Git
  use 'TimUntersberger/neogit'
  use 'lewis6991/gitsigns.nvim'
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use {'npxbr/glow.nvim', run = ':GlowInstall'} 
  use 'windwp/nvim-spectre'


  -- NEW
  use "rafamadriz/friendly-snippets"
  use 'hrsh7th/vim-vsnip' 
  use 'liuchengxu/vista.vim'

end)
