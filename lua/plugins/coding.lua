return {
    "PotatoesMaster/i3-vim-syntax",
    { "folke/trouble.nvim", dependencies = "kyazdani42/nvim-web-devicons" },
    { 'liuchengxu/vista.vim', config = function() require('plugins/cfg/vista') end },
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
    },

}
