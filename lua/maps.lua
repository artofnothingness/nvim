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
    {'gi' ,            '<cmd>lua vim.lsp.buf.implementation()<CR>'},
    {'gr' ,            '<cmd>lua vim.lsp.buf.references()<CR>'},
    {"ga" ,            "<cmd>lua vim.lsp.buf.code_action()<CR>"},
    {"gs" ,            "<cmd>lua vim.lsp.buf.signature_help()<CR>"},
    {"<M-k>" ,         "<cmd>lua vim.lsp.buf.hover()<CR>"},
    {"<C-h>" ,         "<cmd>lua require('Navigator').left()<CR>"},
    {"<C-k>" ,         "<cmd>lua require('Navigator').up()<CR>"},
    {"<C-l>" ,         "<cmd>lua require('Navigator').right()<CR>"},
    {"<C-j>" ,         "<cmd>lua require('Navigator').down()<CR>"},
    {"<A-f>" ,         ":ClangFormat<CR>"},
    {"<A-b>" ,         ":ReachOpen buffers<CR>"},
    {"<A-m>" ,         ":ReachOpen marks<CR>"},
    {"<A-t>" ,         ":ReachOpen tabpages<CR>"},
    {"<A-z>" ,         ":MaximizerToggle<CR>"},
    {"<C-p>" ,         "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>"},
    {"<C-n>" ,         "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>"},
    {"<BS>" ,          ":let @/ = ''<Enter>"},
    {"<F6>",           ":UndotreeToggle<CR>"},
    {"<TAB>" ,         ":BufferNext<CR>"},
    {"<S-TAB>" ,       ":BufferPrevious<CR>"},
    {'<M-C-j>' ,       ':resize -3<CR>'},
    {'<M-C-k>' ,       ':resize +3<CR>'},
    {'<M-C-h>' ,       ':vertical resize -3<CR>'},
    {'<M-C-l>' ,       ':vertical resize +3<CR>'},
    {'<' ,             '<<'},
    {'>' ,             '>>'},
}


local visual_maps = {
    {"<A-f>",  "<cmd>lua vim.lsp.buf.range_formatting()<CR>"},
    {'<',      '<gv'},
    {'>',      '>gv'},
}

local universal_maps = {
    {"H" ,      "^"},
    {'s' ,      ":Pounce<CR>"},
    {'S' ,      ":PounceRepeat<CR>"},
    {"L" ,      "$"},
    {"J" ,      "5j"},
    {"K" ,      "5k"},
    {"U" ,      "J"},
    {"<A-q>" ,  ":q<CR>"},
    {"<A-w>" ,  ":w<CR>"},
    {"<A-e>" ,  ":bdelet<CR>"},
}


local insert_map = {
    {"<S-TAB>" ,      "<C-d>"},
}

set_keymaps('n', normal_maps, opts)
set_keymaps('i', insert_map, opts)
set_keymaps('v', visual_maps, opts)
set_keymaps('', universal_maps, opts)
