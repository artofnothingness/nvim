return {
    {
        'szw/vim-maximizer',
        keys = {
            { '<leader>z', '<cmd>MaximizerToggle!<CR>', 'zoom', mode = 'n' },
        }
    },
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { -- load the plugin only when using it's keybinding:
            { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
        }
    },
    {
        'godlygeek/tabular',
        keys = {
            { '<leader>t,', ':Tabularize /,\\zs<CR>', 'comma', mode = 'v' },
            { '<leader>t=', ':Tabularize /=<CR>',     'equal', mode = 'v' },
        }
    },
    {
        "folke/neodev.nvim",
        lazy = false,
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
        end
    }
}
