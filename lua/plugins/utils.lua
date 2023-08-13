return {
    'szw/vim-maximizer',
    'mbbill/undotree',
    { 'numToStr/Comment.nvim' },

    {
        'godlygeek/tabular',
        keys = {
            { '<leader>t,', ':Tabularize /,\\zs<CR>', 'comma', mode = 'v' },
            { '<leader>t=', ':Tabularize /=<CR>',     'equal', mode = 'v' },
        }
    },

    { 'akinsho/toggleterm.nvim', config = function() require('plugins/cfg/toggleterm') end },

    {
        "ahmedkhalf/project.nvim",
        lazy = false,
        config = function()
            require("project_nvim").setup {
                detection_methods = { "lsp", "pattern" },
                patterns = { ".git", "build", },
                silent_chdir = false,
            }
        end
    },
    {
        "folke/neodev.nvim",
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
        end
    }
}
