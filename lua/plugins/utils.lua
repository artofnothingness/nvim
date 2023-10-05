return {
    {
        'szw/vim-maximizer',
        keys = {
            { '<leader>z', '<cmd>MaximizerToggle!<CR>', 'zoom', mode = 'n' },
        }
    },
    'mbbill/undotree',
    {
        'numToStr/Comment.nvim'
    },
    {
        'godlygeek/tabular',
        keys = {
            { '<leader>t,', ':Tabularize /,\\zs<CR>', 'comma', mode = 'v' },
            { '<leader>t=', ':Tabularize /=<CR>',     'equal', mode = 'v' },
        }
    },
    {
        'akinsho/toggleterm.nvim',
        lazy = false,
        config = function() require('plugins/cfg/toggleterm') end
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
