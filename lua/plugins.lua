local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim'}
    use 'folke/which-key.nvim'

    -- Code 
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'ray-x/lsp_signature.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use 'rhysd/vim-clang-format'
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    use "rafamadriz/friendly-snippets"

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-vsnip",
        "f3fora/cmp-spell",
      }
    }

    use "stevearc/aerial.nvim" 
    use { 'liuchengxu/vista.vim', config = "vim.g.vista_sidebar_width=50" }  

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Look 
    use 'norcalli/nvim-colorizer.lua'
    use 'romgrk/barbar.nvim'
    use 'psliwka/vim-smoothie'
    use 'preservim/tagbar'
    use 'glepnir/dashboard-nvim'
    use 'windwp/windline.nvim'

    -- Themes
    use 'folke/tokyonight.nvim'
    use 'Iron-E/nvim-highlite'
    use 'NTBBloodbath/doom-one.nvim'
    use 'kdheepak/monochrome.nvim'

    -- Addons 
    use "PotatoesMaster/i3-vim-syntax"
    use "jbyuki/venn.nvim"
    

    use 'kevinhwang91/rnvimr'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    use 'dhruvasagar/vim-table-mode'
    use 'voldikss/vim-floaterm'
    use 'mzlogin/vim-markdown-toc'
    use 'mbbill/undotree'
    use 'akinsho/nvim-toggleterm.lua'
    -- use 'kyazdani42/nvim-tree.lua'
    use { 'michaelb/sniprun', run = 'bash ./install.sh', config= function() require'sniprun'.initial_setup() end}

    -- Navigation 
    use 'unblevable/quick-scope' 
    use 'airblade/vim-rooter'
    use { 'nvim-telescope/telescope-project.nvim', config = function() require'telescope'.load_extension('project') end}

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use 'phaazon/hop.nvim'
    use 'numToStr/Navigator.nvim' 

    -- Editing 
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-commentary'
    use 'szw/vim-maximizer'
    use 'lambdalisue/suda.vim'
    use 'godlygeek/tabular'

    -- Git
    use 'TimUntersberger/neogit'
    use 'lewis6991/gitsigns.nvim'
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'windwp/nvim-spectre'


    -- NEW
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("trouble").setup { } end
    }
    use 'mfussenegger/nvim-lint'



end)
