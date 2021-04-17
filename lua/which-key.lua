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
    k  = { ':bdelet<CR>'                                         , 'kill'}         ,
    z  = { ':MaximizerToggle<CR>'                                , 'zoom'}                ,
    s  = {
        name = '+Search'                                         ,
        o = {":lua require('spectre').open()<CR>"                , 'open'}                ,
        w = {"viw:lua require('spectre').open_visual()<CR>"      , 'word'}                ,
        f = {"viw:lua require('spectre').open_file_search()<CR>" , 'file word'} ,
    }                                                            ,
    f  = {
        name = '+Find'                                           ,
        f = {'<cmd>Telescope find_files<CR>'                     , 'files'}               ,
        b = {'<cmd>Telescope buffers<CR>'                        , 'buffers'}             ,
        r = {'<cmd>Telescope oldfiles<CR>'                       , 'recent'}              ,
        S = {':Telescope lsp_workspace_symbols<CR>'              , 'symbols'}             ,
        s = {':Telescope lsp_document_symbols<CR>'               , 'file symbols'}        ,
    }                                                            ,
    c = {
        name = '+Code'                                           ,
        r = {':Lspsaga rename<CR>'                               , 'rename'}              ,
        f = {':Lspsaga lsp_finder<CR>'                           , 'references'}          ,
        s = {':Lspsaga signature_help<CR>'                       , 'signature'}           ,
        p = {':Lspsaga preview_definition<CR>'                   , 'preview'}             ,
        d = {':DogeGenerate<CR>'                                 , 'documentation'}       ,
        }
}

local leader_map_visual = {
    s = {"lua require('spectre').open_visual()<CR>",                 'word'},
}

which_key.register_keymap('leader', leader_map_normal)
which_key.register_keymap('leader', leader_map_visual, {mode = 'v'})

local local_leader_map_normal = {
    g  = { ':Neogit<CR>'                   , 'neogit'}  ,
    r  = { ':RnvimrToggle<CR>'             , 'ranger'}  ,
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
which_key.register_keymap('localleader', local_leader_map_normal)
