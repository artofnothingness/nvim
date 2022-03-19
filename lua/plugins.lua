local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

function cfg(name)
  return string.format('require("cfg/%s")', name)
end


return require('packer').startup(
function()
  use 'wbthomason/packer.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'folke/which-key.nvim'
  use 'romgrk/barbar.nvim'
  use 'psliwka/vim-smoothie'
  use "PotatoesMaster/i3-vim-syntax"
  use 'mbbill/undotree'
  use 'p00f/clangd_extensions.nvim'
  use 'dhruvasagar/vim-table-mode'
  use 'windwp/nvim-spectre'
  use 'kyazdani42/nvim-tree.lua'
  use 'rhysd/vim-clang-format'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-commentary'
  use 'szw/vim-maximizer'
  use 'godlygeek/tabular'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use {'phaazon/hop.nvim' ,        config = function() require'hop'.setup() end }
  use {"ahmedkhalf/project.nvim",  config = function() require("project_nvim").setup{} end}
  use {'numToStr/Comment.nvim',    config = function() require('Comment').setup() end}
  use {'windwp/nvim-autopairs',    config = function() require('nvim-autopairs').setup() end }
  use {'j-hui/fidget.nvim',        config = function() require"fidget".setup{} end}
  -- >> Themes
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'Iron-E/nvim-highlite'
  use 'folke/tokyonight.nvim'
  use 'NTBBloodbath/doom-one.nvim'
  use 'kdheepak/monochrome.nvim'
  use "Pocco81/Catppuccino.nvim"
  use "rebelot/kanagawa.nvim"
  use 'yashguptaz/calvera-dark.nvim'
  use 'mjlbach/onedark.nvim'
  use 'tanvirtin/monokai.nvim'
  -- << Themes
  use {'neovim/nvim-lspconfig',                config = cfg('lspconfig')}
  use {'nvim-treesitter/nvim-treesitter',      config = cfg('treesitter'),        run = ':TSUpdate'}
  use {'kkoomen/vim-doge',                     config = cfg('doge'),              run = ':call doge#install()'}
  use {"lukas-reineke/indent-blankline.nvim",  config = cfg('indent-blankline')}
  use {'norcalli/nvim-colorizer.lua',          config = cfg('colorizer')}
  use {'glepnir/dashboard-nvim',               config = cfg('dashboard') }
  use {'kevinhwang91/rnvimr',                  config = cfg('rnvimr')}
  use {'unblevable/quick-scope',               config = cfg('quick-scope')}
  use {'liuchengxu/vista.vim',                 config = cfg('vista')}
  use {'numToStr/Navigator.nvim' ,             config = cfg('navigator')}
  use {'lewis6991/gitsigns.nvim',              config = cfg('signs')}
  use {'rlane/pounce.nvim',                    config = cfg('pounce')}
  use {'elihunter173/dirbuf.nvim',             config = cfg('dirbuf')}


  use {'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = cfg('telescope')
  }

  use {'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = cfg('lualine')
  }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
    config = cfg('cmp')
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v1.x",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim" 
      },
      config = cfg('neotree')
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
