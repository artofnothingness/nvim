return {
    {
        'windwp/nvim-spectre',
        keys = {
            { '<localleader>s', ":Spectre<CR>", desc = "Spectre" },
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        dependencies = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' }
        },
        config = function() require('plugins/cfg/telescope') end,
        keys = {
            { '<leader>f.', '<cmd>Telescope lsp_document_symbols<CR>',          desc = 'file symbols' },
            { '<leader>fc', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>', desc = 'ws symbols' },
            { '<leader>ff', '<cmd>Telescope find_files<CR>',                    desc = 'files .' },
            { '<leader>fb', '<cmd>Telescope buffers<CR>',                       desc = 'buffers' },
            { '<leader>fr', '<cmd>Telescope oldfiles<CR>',                      desc = 'recent files' },
            { '<leader>fw', '<cmd>Telescope live_grep<CR>',                     desc = 'word' },
            { '<leader><BS>', '<cmd>Telescope resume<CR>',                      desc = '[S]earch [R]esume' },
        }
    },
    {
        "SmiteshP/nvim-navic",
        lazy = false,
        config = function() require('plugins/cfg/navic') end,
        dependencies = "neovim/nvim-lspconfig"
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
        },
        opts = {},
    },
    {
        "ahmedkhalf/project.nvim",
        lazy = false,
        config = function()
            require("project_nvim").setup {}
        end,
        keys = {
            { '<leader>fp', '<cmd>Telescope projects<cr>', desc = 'projects' },
        }
    },

}
