local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

-- Navigation
map('', 'H', '^', opts)
map('', 'L', '$', opts)

map('', 'J', '5j', opts)
map('', 'K', '5k', opts)
map('', 'U', 'J', opts)

map('', '<C-a>', '<Home>', opts)
map('i', '<C-a>', '<Home>', opts)
map('', '<C-e>', '<End>', opts)
map('i', '<C-e>', '<End>', opts)

map('n', '<M-C-j>', ':resize -3<CR>', opts)
map('n', '<M-C-k>', ':resize +3<CR>', opts)
map('n', '<M-C-h>', ':vertical resize -3<CR>', opts)
map('n', '<M-C-l>', ':vertical resize +3<CR>', opts)

-- Windows & Tabs
map('n', '<S-Tab>', '<Cmd>bprev<CR>', opts)
map('n', '<Tab>', '<Cmd>bnext<CR>', opts)
map('n', '<A-e>', '<Cmd>bd<CR>', opts)

-- General
map('n', '<', '<<', opts)
map('n', '>', '>>', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
map('i', '<S-TAB>', '<C-d>', opts)
map('', '<A-w>', ':w<CR>', opts)
map('', '<A-q>', ':q<CR>', opts)
map('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
