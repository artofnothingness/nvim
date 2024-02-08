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
                sync_root_with_cwd = true,
                respect_buf_cwd = true,
                update_focused_file = {
                    enable = true,
                    update_root = true
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
