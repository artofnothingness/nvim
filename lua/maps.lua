local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local function set_keymaps(mode, keymaps, opts)
    for _, keymap in ipairs(keymaps) do
        vim.api.nvim_set_keymap(mode, keymap[1], keymap[2], opts)
    end
end

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

local normal_maps = {
    {'gd' ,            '<cmd>lua vim.lsp.buf.definition()<CR>'},
    {'gD' ,            '<cmd>lua vim.lsp.buf.declaration()<CR>'},
    {'gr' ,            '<cmd>lua vim.lsp.buf.references()<CR>'},
    {'gi' ,            '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    {'<A-d>' ,         ':Lspsaga hover_doc<CR>'},
    {'<C-f>' ,         '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>'},
    {'<C-b>' ,         '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>'},
    {"<C-h>" ,         "<CMD>lua require('Navigator').left()<CR>"},
    {"<C-k>" ,         "<CMD>lua require('Navigator').up()<CR>"},
    {"<C-l>" ,         "<CMD>lua require('Navigator').right()<CR>"},
    {"<C-j>" ,         "<CMD>lua require('Navigator').down()<CR>"},
    {"<A-f>" ,         "<cmd>lua vim.lsp.buf.formatting()<CR>"},
    {"<C-_>" ,         ":Commentary<CR>"},
    {"<BS>" ,          ":let @/ = ''<Enter>"},
    {"<F6>" ,          ":UndotreeToggle<CR>"},
    {"<C-p>" ,         ":Lspsaga diagnostic_jump_prev<CR>"},
    {"<C-n>" ,         ":Lspsaga diagnostic_jump_next<CR>"},
    {"<TAB>" ,         ":BufferNext<CR>"},
    {"<S-TAB>" ,       ":BufferPrevious<CR>"},
    {'<' ,             '<<'},
    {'>' ,             '>>'},
    {'<M-C-j>' ,       ':resize -3<CR>'},
    {'<M-C-k>' ,       ':resize +3<CR>'},
    {'<M-C-h>' ,       ':vertical resize -3<CR>'},
    {'<M-C-l>' ,       ':vertical resize +3<CR>'},
}


local visual_maps = {
    {"<A-f>",  "<cmd>lua vim.lsp.buf.range_formatting()<CR>"},
    {"<C-_>",  ":Commentary<CR>gv"},
    {'<',      '<gv'},
    {'>',      '>gv'},
}

local universal_maps = {
    {"H" ,      "^"},
    {'s' ,      ":HopChar1<CR>"},
    {"L" ,      "$"},
    {"J" ,      "5j"},
    {"K" ,      "5k"},
    {"<A-j>" ,  "<C-d>"},
    {"<A-k>" ,  "<C-u>"},
    {"U" ,      "J"},
    {"<A-q>" ,  ":q<CR>"},
    {"<A-w>" ,  ":w<CR>"},
}

set_keymaps('n', normal_maps, opts)
set_keymaps('v', visual_maps, opts)
set_keymaps('', universal_maps, opts)

map('i', '<c-j>', '<C-n>', {expr = true, noremap = true})
map('i', '<c-k>', '<C-p>', {expr = true, noremap = true})
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

vim.cmd('nnoremap <silent> <C-f> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
vim.cmd('nnoremap <silent> <C-b> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')
vim.cmd("inoremap <silent><expr> <C-Space> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")
