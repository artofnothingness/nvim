return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-cmdline',
            'dmitmel/cmp-cmdline-history',
            'petertriho/cmp-git',
            'windwp/nvim-autopairs',
            'onsails/lspkind.nvim',

            "rafamadriz/friendly-snippets",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function() require('plugins/cfg/cmp') end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    }
}
