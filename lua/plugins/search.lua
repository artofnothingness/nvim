return {
    {
        'windwp/nvim-spectre',
        keys = {
            {'<localleader>s', ":lua require('spectre').open()<CR>", 'spectre' },
        }
    },

    { 'nvim-telescope/telescope-ui-select.nvim' },

    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 
            { 'nvim-lua/popup.nvim' }, 
            { 'nvim-lua/plenary.nvim' } 
        },
        config = function () require('plugins/cfg/telescope') end,
        keys = {
            {'<leader>fs', ':Telescope lsp_document_symbols<CR>', 'file symbols' },
            {'<leader>fS', ':Telescope lsp_dynamic_workspace_symbols<CR>', 'ws symbols' },
            {'<leader>ff', '<cmd>Telescope find_files<CR>', 'files .' },
            {'<leader>fb', '<cmd>Telescope buffers<CR>', 'buffers' },
            {'<leader>fr', '<cmd>Telescope oldfiles<CR>', 'recent files' },
            {'<leader>fw', '<cmd>Telescope live_grep<cr>', 'word' },
        }
    }
}
