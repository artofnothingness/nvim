vim.pack.add { 'https://github.com/numToStr/Navigator.nvim' }

require('Navigator').setup {
  auto_save = 'current',
  disable_on_zoom = true,
}

vim.keymap.set('n', '<C-h>', '<cmd>lua require("Navigator").left()<CR>')
vim.keymap.set('n', '<C-k>', '<cmd>lua require("Navigator").up()<CR>')
vim.keymap.set('n', '<C-l>', '<cmd>lua require("Navigator").right()<CR>')
vim.keymap.set('n', '<C-j>', '<cmd>lua require("Navigator").down()<CR>')
