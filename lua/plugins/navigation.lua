return {
    {
        'numToStr/Navigator.nvim',
        config = function()
            require('Navigator').setup({
                auto_save = 'current',
                disable_on_zoom = true
            })
        end,
        keys = {
            { '<C-h>', '<cmd>lua require("Navigator").left()<CR>' },
            { '<C-k>', '<cmd>lua require("Navigator").up()<CR>' },
            { '<C-l>', '<cmd>lua require("Navigator").right()<CR>' },
            { '<C-j>', '<cmd>lua require("Navigator").down()<CR>' },
        }

    },
    {
        'rlane/pounce.nvim',
        config = function() require('plugins/cfg/pounce') end,
        keys = {
            { 's', ':Pounce<CR>' },
            { 'S', ':PounceRepeat<CR>' }
        }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function() require('plugins/cfg/harpoon') end,
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim"
        },
        opts = { lsp = { auto_attach = true } },
        keys = {
            { '<localleader>f', ':Navbuddy<CR>', desc = 'Navbuddy' },
        }
    },
    {
        "sustech-data/wildfire.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("wildfire").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        lazy = false,
        config = function() require('plugins/cfg/treesitter-textobjects') end,
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    }
}
