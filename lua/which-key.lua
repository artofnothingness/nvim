local which_key = require('whichkey_setup')

which_key.config {
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

local leader_map_normal = {
    k  = { ':bdelet<CR>'                                         , 'Kill buffer'}         ,
    z  = { ':MaximizerToggle<CR>'                                , 'Zoom'}                ,
    s  = {
        name = '+Search'                                         ,
        o = {":lua require('spectre').open()<CR>"                , 'open'}                ,
        w = {"viw:lua require('spectre').open_visual()<CR>"      , 'word'}                ,
        f = {"viw:lua require('spectre').open_file_search()<CR>" , 'word in file search'} ,
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
    g  = { ':Neogit<CR>'                   , 'Neogit'}  ,
    r  = { ':RnvimrToggle<CR>'             , 'Ranger'}  ,
    p  = {
        name = '+Packer'                   ,
        u = {':PackerUpdate<CR>'           , 'Update'}  ,
        s = {':PackerSync<CR>'             , 'Sync'}    ,
        C = {':PackerClean<CR>'            , 'Clean'}   ,
        c = {':PackerCompile<CR>'          , 'Compile'} ,
    }                                      ,
    o  = {
        name = '+Open'                     ,
        l = {':FloatermNew lazygit<CR>'    , 'Git'}     ,
        d = {':FloatermNew lazydocker<CR>' , 'Docker'}  ,
        p = {':FloatermNew python<CR>'     , 'Python'}  ,
        h = {':FloatermNew htop<CR>'       , 'Htop'}    ,
    }                                      ,
}
which_key.register_keymap('localleader', local_leader_map_normal)
