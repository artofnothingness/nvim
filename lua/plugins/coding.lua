return {
    "PotatoesMaster/i3-vim-syntax",
    {
        "folke/trouble.nvim",
        dependencies = "kyazdani42/nvim-web-devicons",
        keys = {
            { '<leader>cdw', ':Trouble workspace_diagnostics<CR>' },
            { '<leader>cdf', ':Trouble document_diagnostics<CR>' },
            { '<leader>cdq', ':Trouble quickfix<CR>' },
        }
    },

    {
        'simrat39/symbols-outline.nvim',
        config = function() require("symbols-outline").setup() end,
        keys = {
            { '<leader>co', ':SymbolsOutline<CR>', desc = 'Outline' },
        }
    },

    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ":TSUpdate",
        cmd = { "TSUpdateSync" },
        version = false,
        config = function() require('plugins/cfg/treesitter') end,
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        keys = {
            { '<leader>cg', ':Neogen<CR>', desc = 'gen documentation' },
        }
    },

}
