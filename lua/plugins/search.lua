return {
    'windwp/nvim-spectre',
    { 'nvim-telescope/telescope-ui-select.nvim' },

    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 
            { 'nvim-lua/popup.nvim' }, 
            { 'nvim-lua/plenary.nvim' } 
        },
        config = function () require('plugins/cfg/telescope') end
    },

}
