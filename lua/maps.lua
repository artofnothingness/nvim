local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

map('n', '<Space>', '<NOP>', opts)
map('n', 'm', '<NOP>', opts)

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

map('n', 's',     ":HopChar2<CR>", opts)
map('n', '<A-l>', ":HopLine<CR>", opts)

map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

map('n', '<A-k>', ':Lspsaga hover_doc<CR>', opts)

map('n', '<C-f>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', opts)
map('n', '<C-b>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', opts)

map('n', "<C-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
map('n', "<C-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
map('n', "<C-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
map('n', "<C-j>", "<CMD>lua require('Navigator').down()<CR>", opts)

map("v", "<A-f>", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
map("n", "<A-f>", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

map("n", "<A-q>", ":q<CR>", opts)
map("n", "<A-w>", ":w<CR>", opts)

vim.cmd('nnoremap <silent> <C-f> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
vim.cmd('nnoremap <silent> <C-b> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')

map('n', "<C-_>", ":Commentary<CR>", opts)
map('v', "<C-_>", ":Commentary<CR>gv", opts)

map('', "H",    "^", opts)
map('', "L",    "$", opts)
map('', "J",    "5j", opts)
map('', "K",    "5k", opts)
map('', "U",    "J", opts)

map('n', "<BS>",    ":let @/ = ''<Enter>", opts)
map('n', "<F6>",    ":UndotreeToggle<CR>", opts)

map('n', "<C-p>", ":Lspsaga diagnostic_jump_prev<CR>", opts)
map('n', "<C-n>", ":Lspsaga diagnostic_jump_next<CR>", opts)

map('n', "<TAB>", ":BufferNext<CR>", opts)
map('n', "<S-TAB>", ":BufferPrevious<CR>", opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
map('n', '<', '<<', opts)
map('n', '>', '>>', opts)

map('i', '<c-j>', '<C-n>', {expr = true, noremap = true})
map('i', '<c-k>', '<C-p>', {expr = true, noremap = true})

vim.cmd("inoremap <silent><expr> <C-Space> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
