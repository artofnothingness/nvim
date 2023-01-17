local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  return
end

function cfg(name)
  return string.format('require("cfg/%s")', name)
end


return require('packer').startup(
function()
  use 'wbthomason/packer.nvim'

  -- LSP && Code
  use {'neovim/nvim-lspconfig', config = cfg('lspconfig')}
  use 'p00f/clangd_extensions.nvim'
  use {'liuchengxu/vista.vim', config = cfg('vista')}
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = function() require("trouble").setup {} end }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
    config = cfg('cmp')
  }

  use { "danymat/neogen", config = function() require('neogen').setup {} end,
      requires = "nvim-treesitter/nvim-treesitter",
  }

  -- Syntax
  use "PotatoesMaster/i3-vim-syntax"
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use {'nvim-treesitter/nvim-treesitter', config = cfg('treesitter'),        run = ':TSUpdate'}

  -- UI
  use 'psliwka/vim-smoothie'
  -- use {"nanozuki/tabby.nvim", config = function() require("tabby").setup() end, }
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }
  use 'folke/which-key.nvim'
  use {'b0o/incline.nvim', config = function() require('incline').setup() end }
  -- use {"lukas-reineke/indent-blankline.nvim", config = cfg('indent-blankline')}
  use {'norcalli/nvim-colorizer.lua', config = cfg('colorizer')}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }, config = function() require('lualine').setup() end}
  use {'glepnir/dashboard-nvim', config = cfg('dashboard') }
  use {'tversteeg/registers.nvim'}

  -- Utils
  use 'szw/vim-maximizer'
  use 'mbbill/undotree'
  use {'numToStr/Navigator.nvim', config = cfg('navigator')}
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}
  use {'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end }
  use 'godlygeek/tabular'
  use {'akinsho/toggleterm.nvim', config = cfg('toggleterm')}

  use {
      "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        detection_methods = { "lsp", "pattern" },
        patterns = { ".git", "build", },
        silent_chdir = false,
      }
  end
}

  -- File managing
  use {"elihunter173/dirbuf.nvim"}

  -- Markdown
  use 'dhruvasagar/vim-table-mode'

  -- Search
  use 'windwp/nvim-spectre'
  use {'unblevable/quick-scope', config = cfg('quick-scope')}
  use {'rlane/pounce.nvim',config = cfg('pounce')}
  use {'nvim-telescope/telescope-ui-select.nvim'}

  use {'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = cfg('telescope')
  }

  -- Git
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use {'lewis6991/gitsigns.nvim', config = cfg('signs')}
  use {'j-hui/fidget.nvim', config = function() require"fidget".setup{} end}

  -- Themes
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

  use {'nvim-neo-tree/neo-tree.nvim', branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }, config = cfg('neotree')
  }

  use {
    "nvim-zh/colorful-winsep.nvim",
    config = function ()
        require('colorful-winsep').setup()
    end
  }

  use { "luukvbaal/nnn.nvim", config = function() require("nnn").setup() end }
  use "EdenEast/nightfox.nvim"


  use {'mfussenegger/nvim-lint', config = 
    function() 
        require('lint').linters_by_ft = {
            cpp = {'cppcheck'},
            cmake = {'cmakelint'},
        }

        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
            require("lint").try_lint()
        end,
        })
    end}

  if packer_bootstrap then
    require('packer').sync()
  end

end)
