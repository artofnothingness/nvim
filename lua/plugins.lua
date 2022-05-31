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
  use 'p00f/clangd_extensions.nvim'

  use 'wbthomason/packer.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'folke/which-key.nvim'
  -- use 'romgrk/barbar.nvim'
  use {"nanozuki/tabby.nvim", config = function() require("tabby").setup() end, }

  use 'psliwka/vim-smoothie'
  use "PotatoesMaster/i3-vim-syntax"
  use 'mbbill/undotree'
  use 'dhruvasagar/vim-table-mode'
  use 'windwp/nvim-spectre'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-commentary'
  use 'szw/vim-maximizer'
  use 'godlygeek/tabular'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use {'phaazon/hop.nvim' ,        config = function() require'hop'.setup() end }
  use {'numToStr/Comment.nvim',    config = function() require('Comment').setup() end}
  use {'windwp/nvim-autopairs',    config = function() require('nvim-autopairs').setup() end }
  use {'j-hui/fidget.nvim',        config = function() require"fidget".setup{} end}
  use { "ahmedkhalf/project.nvim", config = function() require("project_nvim").setup{} end }
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
    --
  use {'neovim/nvim-lspconfig',                config = cfg('lspconfig')}
  use {'nvim-treesitter/nvim-treesitter',      config = cfg('treesitter'),        run = ':TSUpdate'}
  use {"lukas-reineke/indent-blankline.nvim",  config = cfg('indent-blankline')}
  use {'norcalli/nvim-colorizer.lua',          config = cfg('colorizer')}
  use {'glepnir/dashboard-nvim',               config = cfg('dashboard') }
  use {'kevinhwang91/rnvimr',                  config = cfg('rnvimr')}
  use {'unblevable/quick-scope',               config = cfg('quick-scope')}
  use {'liuchengxu/vista.vim',                 config = cfg('vista')}
  use {'numToStr/Navigator.nvim' ,             config = cfg('navigator')}
  use {'lewis6991/gitsigns.nvim',              config = cfg('signs')}
  use {'rlane/pounce.nvim',                    config = cfg('pounce')}
  use {'akinsho/toggleterm.nvim',              config = cfg('toggleterm')}

  use {'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = cfg('telescope')
  }

  use {'b0o/incline.nvim', config = function() require('incline').setup() end }

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

  -- new stuffs
  use {
      "danymat/neogen",
      config = function()
          require('neogen').setup {}
      end,
      requires = "nvim-treesitter/nvim-treesitter",
      -- Uncomment next line if you want to follow only stable versions
      -- tag = "*"
  }
  ---

  if packer_bootstrap then
    require('packer').sync()
  end

end)
