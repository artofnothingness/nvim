return {
    {
        "elihunter173/dirbuf.nvim",
        keys = {
            { '<localleader>d', '<CMD>Dirbuf<CR>', desc = "Dirbug" },
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {
                view = {
                    width = 55,
                },
            }
        end,
        keys = {
            { '\\',     '<CMD>NvimTreeToggle<CR>',   desc = "Neotree" },
            { '<C-\\>', '<CMD>NvimTreeFindFile<CR>', desc = "Neotree" }
        }
    },
    {
        'kevinhwang91/rnvimr',
        config = function() require('plugins/cfg/ranger') end,
        keys = {
            { '<localleader>r', '<cmd>RnvimrToggle<CR>', desc = "Ranger" },
        }
    }
}
