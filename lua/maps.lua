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
    {"<C-h>" ,         "<CMD>lua require('Navigator').left()<CR>"},
    {"<C-k>" ,         "<CMD>lua require('Navigator').up()<CR>"},
    {"<C-l>" ,         "<CMD>lua require('Navigator').right()<CR>"},
    {"<C-j>" ,         "<CMD>lua require('Navigator').down()<CR>"},
    {"<C-_>" ,         ":Commentary<CR>"},
    {"<BS>" ,          ":let @/ = ''<Enter>"},
    {"<F6>" ,          ":UndotreeToggle<CR>"},
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
    {"<C-_>",  ":Commentary<CR>gv"},
    {'<',      '<gv'},
    {'>',      '>gv'},
}

local universal_maps = {
    {"H" ,      "^"},
    {"L" ,      "$"},
    {"J" ,      "5j"},
    {"K" ,      "5k"},
    {"U" ,      "J"},
    {'s' ,      ":HopChar1<CR>"},
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
