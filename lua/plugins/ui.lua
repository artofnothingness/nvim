return {
    { 'ryanoasis/vim-devicons' },
    { "dnlhc/glance.nvim" },
    { 'j-hui/fidget.nvim' },
    'psliwka/vim-smoothie',
    { 'romgrk/barbar.nvim',          dependencies = { 'kyazdani42/nvim-web-devicons' } },
    { 'folke/which-key.nvim',        config = function() require('plugins/cfg/which-key') end },
    { 'norcalli/nvim-colorizer.lua', config = function() require('plugins/cfg/colorizer') end },

    { 'b0o/incline.nvim' },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require('lualine').setup(
                {
                    sections = {
                        lualine_b = {
                            {
                                function()
                                    local key = require("grapple").key()
                                    return "  [" .. key .. "]"
                                end,
                                cond = require("grapple").exists,
                            }
                        }
                    }
                }

            )
        end,
        opt = true
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        config = true,
        event = { "WinNew" },
    },
    { 'stevearc/dressing.nvim' },
    {
        "folke/noice.nvim",
        config = function() require('plugins/cfg/noice') end,
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require('plugins/cfg/indent-blankline') end,
    }
}
