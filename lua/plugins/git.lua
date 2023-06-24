return {
    'tpope/vim-fugitive',
    { 'lewis6991/gitsigns.nvim', config = function () require('plugins/cfg/signs') end},
    { 'TimUntersberger/neogit', dependencies = { 'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' },
        config = function()
            require('neogit').setup {
                integrations = {
                    diffview = true
                },
            }
        end
    },
}
