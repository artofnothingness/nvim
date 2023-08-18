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
        "sustech-data/wildfire.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("wildfire").setup()
        end,
    },
    {
        "cbochs/grapple.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { '<leader>.', '<cmd>lua require("grapple").toggle{}<CR>' },
            { '<leader><leader>', '<cmd>lua require("grapple").popup_tags()<CR>' },
        }
    }
}
