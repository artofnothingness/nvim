return {
    { 
        "luukvbaal/nnn.nvim",
        keys = {
            {'<localleader>n', ':NnnPicker %:p:h<CR>'},
        }
    },
    
    { 
        "elihunter173/dirbuf.nvim",
        keys = {
            {'<localleader>d', ':Dirbuf<CR>'},
        }
    },

    { 'nvim-neo-tree/neo-tree.nvim', branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }, 
        config = function () require('plugins/cfg/neotree') end,
        keys = {
            { '\\', ':Neotree reveal toggle<CR>' }
        }
    },
}
