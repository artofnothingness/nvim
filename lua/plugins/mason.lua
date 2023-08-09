return {
    {
        "williamboman/mason.nvim",
        config = function() require('mason').setup() end,
        lazy = false,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function() require('plugins/cfg/mason-lspconfig') end,
        lazy = false,
        dependencies = { 'neovim/nvim-lspconfig', 'williamboman/mason.nvim' },
    }
}
