return {
    { "luukvbaal/nnn.nvim"},
    { "elihunter173/dirbuf.nvim" },

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
