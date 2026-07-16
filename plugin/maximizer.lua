vim.pack.add {
  { src = 'https://github.com/anuvyklack/windows.nvim' },
  { src = 'https://github.com/anuvyklack/middleclass' },
}

require('windows').setup()

vim.keymap.set('n', '<leader>z', '<cmd>WindowsMaximize<CR>', { desc = 'Zoom buffer' })
