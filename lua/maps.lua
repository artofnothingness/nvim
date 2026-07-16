local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

-- Navigation
map('', 'H', '^', 'Move to line start')
map('', 'L', '$', 'Move to line end')

map('', 'J', '5j', 'Move down 5 lines')
map('', 'K', '5k', 'Move up 5 lines')
map('', 'U', 'J', 'Join lines')

map('i', '<C-a>', '<Home>', 'Go to line start')
map('i', '<C-e>', '<End>', 'Go to line end')

map('n', '<M-C-j>', ':resize -3<CR>', 'Decrease window height')
map('n', '<M-C-k>', ':resize +3<CR>', 'Increase window height')
map('n', '<M-C-h>', ':vertical resize -3<CR>', 'Decrease window width')
map('n', '<M-C-l>', ':vertical resize +3<CR>', 'Increase window width')

-- Windows & Tabs
map('n', '<Tab>', '<C-6>', 'Switch to alternate buffer')
map('n', '<A-e>', '<cmd>bd<CR>', 'Close buffer')

-- General
map('n', '<', '<<', 'Dedent')
map('n', '>', '>>', 'Indent')
map('v', '<', '<gv', 'Dedent and reselect')
map('v', '>', '>gv', 'Indent and reselect')
map('i', '<S-TAB>', '<C-d>', 'Dedent')
map('', '<A-w>', ':w<CR>', 'Save file')
map('', '<A-q>', ':q<CR>', 'Close file')
map('n', '<Esc>', '<cmd>nohlsearch<CR>', 'Clear search highlight')
