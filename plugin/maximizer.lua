vim.pack.add { 'https://github.com/szw/vim-maximizer' }

vim.keymap.set('n', '<leader>z', '<cmd>MaximizerToggle!<CR>', { desc = 'Zoom buffer' })
