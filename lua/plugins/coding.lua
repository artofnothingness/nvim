return {
    "PotatoesMaster/i3-vim-syntax",
    { 
        "folke/trouble.nvim", 
        dependencies = "kyazdani42/nvim-web-devicons",
        keys = {
            {'<leader>cdw', ':Trouble workspace_diagnostics<CR>'},
            {'<leader>cdf', ':Trouble document_diagnostics<CR>'},
            {'<leader>cdq', ':Trouble quickfix<CR>'},
        }
    },

    { 
        'liuchengxu/vista.vim', 
        config = function() require('plugins/cfg/vista') end,
        keys = {
            {'<localleader>v', ':Vista!!<CR>', 'vista' },
        }
    },

    {
        'nvim-treesitter/nvim-treesitter', 
        build = ":TSUpdate",
        cmd = { "TSUpdateSync" },
        version = false, 
        config = function() require('plugins/cfg/treesitter') end, 
    },

    { 
        "danymat/neogen", 
        dependencies = "nvim-treesitter/nvim-treesitter",
        keys = {
            {'<leader>cg', ':Neogen<CR>', desc = 'gen documentation'},
        }
    },

}
