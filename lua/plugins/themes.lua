return {
    { 
        'folke/tokyonight.nvim',
        config = function ()
        end
    },

    "EdenEast/nightfox.nvim",
    'kyazdani42/nvim-web-devicons',
    'Iron-E/nvim-highlite',
    'NTBBloodbath/doom-one.nvim',
    'kdheepak/monochrome.nvim',
    "Pocco81/Catppuccino.nvim",
    "rebelot/kanagawa.nvim",
    'yashguptaz/calvera-dark.nvim',
    'mjlbach/onedark.nvim',
    'tanvirtin/monokai.nvim',
    {
        'nyoom-engineering/oxocarbon.nvim',
        config = function()
            vim.cmd.colorscheme 'highlite'
            vim.cmd.colorscheme 'oxocarbon'
        end
    },
}
