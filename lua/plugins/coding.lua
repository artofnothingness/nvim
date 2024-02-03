return {
    {
        "folke/trouble.nvim",
        dependencies = "kyazdani42/nvim-web-devicons",
        keys = {
            { '<leader>cdw', ':Trouble workspace_diagnostics<CR>', desc = 'Workspace' },
            { '<leader>cdf', ':Trouble document_diagnostics<CR>',  desc = 'Document' },
            { '<leader>cdq', ':Trouble quickfix<CR>',              desc = 'Quickfix' },
        }
    },

    {
        'simrat39/symbols-outline.nvim',
        config = function() require("symbols-outline").setup() end,
        keys = {
            { '<localleader>o', ':SymbolsOutline<CR>', desc = 'Outline' },
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
