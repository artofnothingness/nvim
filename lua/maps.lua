local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

-- LSP
map('n',  'gd' ,       '<cmd>lua vim.lsp.buf.definition()<CR>',      opts)
map('n',  'gD' ,       '<cmd>lua vim.lsp.buf.declaration()<CR>',     opts)
map('n',  'gi' ,       '<cmd>lua vim.lsp.buf.implementation()<CR>',  opts)
map('n',  'gr' ,       '<cmd>lua vim.lsp.buf.references()<CR>',      opts)
map('n',  'ga' ,       '<cmd>lua vim.lsp.buf.code_action()<CR>',     opts)
map('n',  '<M-s>',     '<cmd>lua vim.lsp.buf.signature_help()<CR>',  opts)
map('n',  '<M-k>' ,    '<cmd>lua vim.lsp.buf.hover()<CR>',           opts)
map('n',  '[d',        '<cmd>lua vim.diagnostic.goto_prev()<CR>',    opts)
map('n',  ']d',        '<cmd>lua vim.diagnostic.goto_next()<CR>',    opts)
map('n', '<A-f>', function() vim.lsp.buf.format { async = true } end, opts)

-- Navigation
map('',   'H' ,        '^',                        opts)
map('',   's' ,        ':Pounce<CR>',              opts)
map('',   'S' ,        ':PounceRepeat<CR>',        opts)
map('',   'L' ,        '$',                        opts)
map('',   'J' ,        '5j',                       opts)
map('',   'K' ,        '5k',                       opts)
map('',   'U' ,        'J',                        opts)
map('n',  '<M-C-j>' ,  ':resize -3<CR>',           opts)
map('n',  '<M-C-k>' ,  ':resize +3<CR>',           opts)
map('n',  '<M-C-h>' ,  ':vertical resize -3<CR>',  opts)
map('n',  '<M-C-l>' ,  ':vertical resize +3<CR>',  opts)

-- File manager
map('',  '\\',  ':Neotree reveal toggle<CR>',  opts)


-- Windows & Tabs
map('n',  '<C-h>',    '<cmd>lua require("Navigator").left()<CR>',   opts)
map('n',  '<C-k>',    '<cmd>lua require("Navigator").up()<CR>',     opts)
map('n',  '<C-l>',    '<cmd>lua require("Navigator").right()<CR>',  opts)
map('n',  '<C-j>' ,   '<cmd>lua require("Navigator").down()<CR>',   opts)
map('n',  '<S-Tab>',  '<Cmd>BufferPrevious<CR>',                    opts)
map('n',  '<Tab>',    '<Cmd>BufferNext<CR>',                        opts)
map('n',  '<A-e>',    '<Cmd>BufferClose<CR>',                       opts)
map('n',  '<A-x>',    '<Cmd>BufferCloseAllButCurrent<CR>',          opts)

-- General
map('n',  '<BS>' ,    ':let @/ = ""<Enter>',  opts)
map('n',  '<' ,       '<<',                   opts)
map('n',  '>' ,       '>>',                   opts)
map('v',  '<' ,       '<gv',                  opts)
map('v',  '>' ,       '>gv',                  opts)
map('i',  '<S-TAB>',  '<C-d>',                opts)
map('',   '<A-w>' ,   ':w<CR>',               opts)
map('',   '<A-q>',    ':q<CR>',               opts)
