return {
    {
        "elihunter173/dirbuf.nvim",
        keys = {
            { '<localleader>d', '<CMD>Dirbuf<CR>', desc = "Dirbug" },
        }
    },
    {
        'simonmclean/triptych.nvim',
        event = 'VeryLazy',
        dependencies = {
            'nvim-lua/plenary.nvim', -- required
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function() require('plugins/cfg/triptych') end,
    }
}
