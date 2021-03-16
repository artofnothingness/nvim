vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'm', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 's', ":HopChar2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'S', ":HopWord<CR>", { noremap = true, silent = true })
