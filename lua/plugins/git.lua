return {
    {
        'tpope/vim-fugitive',
        keys = {
            {'<leader>gb', ':Git blame<CR>', desc = 'Git blame' },
        }
    },

    { 'lewis6991/gitsigns.nvim', config = function () require('plugins/cfg/signs') end},

    { 'TimUntersberger/neogit', dependencies = { 'nvim-lua/plenary.nvim', 'sindrets/diffview.nvim' },
        config = function()
            require('neogit').setup {
                integrations = {
                    diffview = true
                },
            }
        end,
        keys = {
            {'<leader>go', ':Neogit<CR>', desc = 'Neogit Open' }
        }
    },

    {
        "sindrets/diffview.nvim" ,
        keys = {
            {'<leader>gdo', ':DiffviewOpen<CR>', desc = 'diff open'},
            {'<leader>gdd',  ':DiffviewOpen dev<CR>', desc = 'diff dev' },
            {'<leader>gdf', ':DiffviewToggleFiles<CR>', desc = 'toggle files' },
            {'<leader>gdh', ':DiffviewFileHistory<CR>', desc = 'history' },             
        }
    }
}
