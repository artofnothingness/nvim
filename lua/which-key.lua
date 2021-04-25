local which_key = require('whichkey_setup')

vim.g.which_key_disable_default_offset = 1
vim.g.which_key_use_floating_win = 0
vim.g.which_key_run_map_on_popup = 1

vim.cmd("highlight default link WhichKeySeperator Operator")
vim.cmd("highlight default link WhichKeyGroup     SpecialKey")

which_key.config {
    hide_statusline = true,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

local leader_map_normal = {
    k  = { ':bdelet<CR>'                                      , 'kill'}          ,
    z  = { ':MaximizerToggle<CR>'                             , 'zoom'}          ,
    s  = {
        name = '+Search'                                      ,
        s = {":lua require('spectre').open()<CR>"             , 'open'}          ,
        t = {":lua require('spectre').open_file_search()<CR>" , 'this file'}     ,
        w = {"viw:lua require('spectre').open_visual()<CR>"   , 'word'}          ,
    }                                                         ,
    f  = {
        name = '+Find'                                        ,
        f = {'<cmd>Telescope find_files<CR>'                  , 'files .'}         ,
        b = {'<cmd>Telescope buffers<CR>'                     , 'buffers'}       ,
        r = {'<cmd>Telescope oldfiles<CR>'                    , 'recent files'}        ,
    }                                                         ,
    c = {
        name = '+Code'                                 ,
        w = {':Telescope lsp_workspace_symbols<CR>'    , 'workspace symbols'}       ,
        s = {':Telescope lsp_document_symbols<CR>'     , 'file symbols'}            ,
        d = {':Telescope lsp_document_diagnostics<CR>' , 'diagnostics'}             ,
        r = {':Lspsaga rename<CR>'                     , 'rename'}                  ,
        f = {':Lspsaga lsp_finder<CR>'                 , 'references'}              ,
        h = {':Lspsaga signature_help<CR>'             , 'signature'}               ,
        p = {':Lspsaga preview_definition<CR>'         , 'preview'}                 ,
        g = {':DogeGenerate<CR>'                       , 'gen documentation'}           ,
        },
}



local local_leader_map_normal = {
    g  = { ':Neogit<CR>'                   , 'neogit'}  ,
    r  = { ':RnvimrToggle<CR>'             , 'ranger'}  ,
    e  = { ':NvimTreeToggle<CR>'           , 'editor'}  ,
    v  = { ':Vista!!<CR>'                  , 'vista'}  ,
    p  = {
        name = '+Packer'                   ,
        u = {':PackerUpdate<CR>'           , 'update'}  ,
        s = {':PackerSync<CR>'             , 'sync'}    ,
        C = {':PackerClean<CR>'            , 'clean'}   ,
        c = {':PackerCompile<CR>'          , 'compile'} ,
    }                                      ,
    o  = {
        name = '+Open'                     ,
        l = {':FloatermNew lazygit<CR>'    , 'git'}     ,
        d = {':FloatermNew lazydocker<CR>' , 'docker'}  ,
        p = {':FloatermNew python<CR>'     , 'python'}  ,
        h = {':FloatermNew htop<CR>'       , 'htop'}    ,
    }                                      ,
}


local keymap_go_next = {
    name = "+go next",
    b = { ":BufferNext<CR>", "buffer" },
    t = { ":tabnext<CR>",    "tab" },
    d = { ":Lspsaga diagnostic_jump_next<CR>",    "diagnostics" },
  }


local keymap_go_prev = {
    name = "+go prev",
    b = { ":BufferPrev<CR>", "buffer" },
    t = { ":tabprev<CR>",    "tab" },
    d = { ":Lspsaga diagnostic_jump_prev<CR>",    "diagnostics" },
  }

which_key.register_keymap('localleader', local_leader_map_normal)
which_key.register_keymap('leader', leader_map_normal, {mode = 'n'})

which_key.register_keymap("[", keymap_go_prev, {mode = 'n'})
which_key.register_keymap("]", keymap_go_next, {mode = 'n'})


