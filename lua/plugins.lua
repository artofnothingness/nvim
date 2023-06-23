
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- LSP && Code
    { 'neovim/nvim-lspconfig', config = function () require('cfg/lspconfig') end},
    'p00f/clangd_extensions.nvim',
    { 'liuchengxu/vista.vim', config = function() require('cfg/vista') end },

    { "folke/trouble.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

     {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
        },
        config = function () require('cfg/cmp') end
    },

    { "dnlhc/glance.nvim"},

    { 'j-hui/fidget.nvim' },

    -- Syntax
    "PotatoesMaster/i3-vim-syntax",

    { 
        'nvim-treesitter/nvim-treesitter', 
        build = ":TSUpdate",
        cmd = { "TSUpdateSync" },
        version = false, -- last release is way too old and doesn't work on Windows
        config = function() require('cfg/treesitter') end, 
    },


    { 
        "danymat/neogen", 
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    -- UI
    'psliwka/vim-smoothie',
    {"nanozuki/tabby.nvim" },
    -- use { 'romgrk/barbar.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' } }

    { 'folke/which-key.nvim', config = function () require('cfg/which-key') end},

    { 'b0o/incline.nvim' },
    -- use {"lukas-reineke/indent-blankline.nvim", config = require('cfg/indent-blankline')}
    { 'norcalli/nvim-colorizer.lua', config = function () require('cfg/colorizer') end},

    { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }, 
        config = function()
            require('lualine').setup()
        end 
    },

    { 'tversteeg/registers.nvim' },

    -- Utils
    'szw/vim-maximizer',
    'mbbill/undotree',
    { 'numToStr/Navigator.nvim', config = 
        function()
            require('Navigator').setup({
                auto_save = 'current',
                disable_on_zoom = true
            })
        end
    },

    { 'numToStr/Comment.nvim' },
    { 'windwp/nvim-autopairs' },
    'godlygeek/tabular',
    { 'akinsho/toggleterm.nvim', config = function () require('cfg/toggleterm') end},

    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                detection_methods = { "lsp", "pattern" },
                patterns = { ".git", "build", },
                silent_chdir = false,
            }
        end
    },

    -- File managing
    { "elihunter173/dirbuf.nvim" },

    -- Markdown
    'dhruvasagar/vim-table-mode',

    -- Search
    'windwp/nvim-spectre',
    { 'unblevable/quick-scope', config = function () require('cfg/quick-scope') end },
    { 'rlane/pounce.nvim', config = function () require('cfg/pounce') end},
    { 'nvim-telescope/telescope-ui-select.nvim' },

    { 'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
        config = function () require('cfg/telescope')
        end},

    -- Git
    'tpope/vim-fugitive',
    { 'lewis6991/gitsigns.nvim', config = function () require('cfg/signs') end},
    { 'TimUntersberger/neogit', dependencies = { 'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' },
        config = function()
            require('neogit').setup {
                integrations = {
                    diffview = true
                },
            }
        end
    },

    -- Themes
    {'folke/tokyonight.nvim' },
    'kyazdani42/nvim-web-devicons',
    'ryanoasis/vim-devicons',
    'Iron-E/nvim-highlite',
    'NTBBloodbath/doom-one.nvim',
    'kdheepak/monochrome.nvim',
    "Pocco81/Catppuccino.nvim",
    "rebelot/kanagawa.nvim",
    'yashguptaz/calvera-dark.nvim',
    'mjlbach/onedark.nvim',
    'tanvirtin/monokai.nvim',
    { 'nyoom-engineering/oxocarbon.nvim', lazy = false, config = function() vim.cmd([[colorscheme carbonfox]]) end },


    { 'nvim-neo-tree/neo-tree.nvim', branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }, config = function () require('cfg/neotree')
        end},

    { "nvim-zh/colorful-winsep.nvim" },

    { "luukvbaal/nnn.nvim"},
    "EdenEast/nightfox.nvim",

    { 'mfussenegger/nvim-lint', config =
        function()
            require('lint').linters_by_ft = {
                cpp = { 'cppcheck' },
                cmake = { 'cmakelint' },
            }

            vim.api.nvim_create_autocmd({ "BufWritePost" }, {
                callback = function()
                    require("lint").try_lint()
                end,
            })
        end 
    },

    { 'stevearc/dressing.nvim' },
    { "williamboman/mason.nvim" },

    { 'mfussenegger/nvim-dap', config = function () require('cfg/dap') end},
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, config = function () require('cfg/dap-ui') end},

    { "folke/neodev.nvim", 
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
        end
    }
})

