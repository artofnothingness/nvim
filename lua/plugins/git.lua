return {
    {
        'tpope/vim-fugitive',
        keys = {
            { '<leader>gb', ':Git blame<CR>', desc = 'Git blame' },
        }
    },
    { 'lewis6991/gitsigns.nvim', config = function() require('plugins/cfg/signs') end },
}
