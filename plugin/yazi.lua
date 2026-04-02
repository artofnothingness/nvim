vim.pack.add { 'https://github.com/Rolv-Apneseth/tfm.nvim' }

vim.keymap.set('n', '<leader>e', require('tfm').open, { desc = 'Open Yazi' })
