return { 
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
        },
        config = function () require('plugins/cfg/cmp') end
    }
}
