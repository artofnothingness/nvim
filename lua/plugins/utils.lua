return {
    'szw/vim-maximizer',
    'mbbill/undotree',
    { 'numToStr/Comment.nvim' },
    { 'windwp/nvim-autopairs' },
    'godlygeek/tabular',
    { 'akinsho/toggleterm.nvim', config = function () require('plugins/cfg/toggleterm') end},

    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                detection_methods = { "lsp", "pattern" },
                patterns = { ".git", "build", },
                silent_chdir = false,
            }
        end
    },
    { 
        "folke/neodev.nvim", 
        config = function()
            require("neodev").setup({
                library = { plugins = { "nvim-dap-ui" }, types = true },
            })
        end
    }
}
