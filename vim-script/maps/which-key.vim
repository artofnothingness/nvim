nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>       :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <localleader> :<c-u>WhichKey  'm'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual  'm'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

let g:which_key_map_ll =  {}
let g:which_key_sep_ll = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

call which_key#register('<Space>', "g:which_key_map")
call which_key#register('m',       "g:which_key_map_ll")

" --------------------------------------MAPS ---------------------------------------

let g:which_key_map['k']    = [ ':bdelet',                               'kill buffer']
let g:which_key_map['w']    = [ ':Telescope lsp_workspace_symbols',      'find symbols']
let g:which_key_map['s']    = [ ':Telescope lsp_document_symbols',       'find current symbols']
let g:which_key_map['f']    = [ ':Telescope find_files',                 'find files']
let g:which_key_map['b']    = [ ':Telescope buffers',                    'find buffers']
let g:which_key_map['g']    = [ ':Telescope live_grep',                  'find grep']
let g:which_key_map['r']    = [ ':Telescope oldfiles',                   'find recent']
let g:which_key_map['q']    = [ ':Telescope quickfix',                   'find quickfix']
let g:which_key_map['c']    = [ ':Telescope lsp_code_actions',           'find code actions']
let g:which_key_map['d']    = [ ':Telescope lsp_document_diagnostics',   'find diagnostics']

let g:which_key_map['a']    = [ ':Lspsaga code_action',                  'code action']
let g:which_key_map['R']    = [ ':Lspsaga rename',                       'rename']
let g:which_key_map['?']    = [ ':Lspsaga signature_help',               'signature']
let g:which_key_map['p']    = [ ':Lspsaga preview_definition',           'preview']
let g:which_key_map['*']    = [ ':Lspsaga lsp_finder',                   'references']
let g:which_key_map['z']    = [ ':MaximizerToggle',                   'zoom']


let g:which_key_map.t = {
      \ 'name' : '+Search' ,
      \ 'b' : [':Telescope git_branches'                , 'git branches'],
      \ 'f' : [':Telescope file_browser'                , 'file browser'],
      \ 'z' : [':Telescope current_buffer_fuzzy_find'   , 'buf_fuz_find'],
      \ 'k' : [':Telescope keymaps'                     , 'keymaps'],
      \ 'm' : [':Telescope man_pages'                   , 'man_pages'],
      \ }

let g:which_key_map.m = {
\ 'name': '+Mark',
    \ 'm' : [':BookmarkToggle'     , 'toggle'],
    \ 'a' : [':BookmarkAnnotate'   , 'annotate'],
    \ 'n' : [':BookmarkNext'       , 'next mark'],
    \ 'p' : [':BookmarkPrev'       , 'prev mark'],
    \ 's' : [':BookmarkShowAll'    , 'search'],
    \ 'c' : [':BookmarkClear'      , 'clear'],
    \ 'C' : [':BookmarkClearAll'   , 'clear all'],
    \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'],
      \ 'l' : [':SLoad'           , 'Load Session'],
      \ 's' : [':Startify'        , 'Start Page'],
      \ 'S' : [':SSave'           , 'Save Session'],
      \ }

let g:which_key_map.F = {
    \ 'name': '+Fold',
    \ '1' : [':set foldlevel=1', 'level 1'],
    \ '2' : [':set foldlevel=2', 'level 2'],
    \ '3' : [':set foldlevel=3', 'level 3'],
    \ '4' : [':set foldlevel=4', 'level 4'],
    \ '5' : [':set foldlevel=5', 'level 5'],
    \ '6' : [':set foldlevel=6', 'level 6']
    \ }
let g:which_key_map.G = {
      \ 'name' : '+Git' ,
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'j' : [':NextHunk'                         , 'next hunk'],
      \ 'k' : [':PrevHunk'                         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':PreviewHunk'                      , 'preview hunk'],
      \ 'r' : [':ResetHunk'                        , 'reset hunk'],
      \ 'R' : [':ResetBuffer'                      , 'reset buffer'],
      \ 's' : [':StageHunk'                        , 'stage hunk'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ 'u' : [':UndoStageHunk'                    , 'undo stage hunk'],
      \ }
      " \ 'n' : [':Neogit'                           , 'neogit'],

let g:which_key_map.l = {
      \ 'name' : '+Lsp' ,
      \ 'i' : [':LspInfo'                            , 'lsp info'],
      \ 'd' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'a' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ }

" let g:which_key_map_ll[' '] = [ ':Startify',             'startify' ]
let g:which_key_map_ll['c'] = [ ':NvimTreeFindFile',     'find current file' ]
let g:which_key_map_ll['e'] = [ ':NvimTreeToggle',       'explorer' ]
let g:which_key_map_ll['r'] = [ ':RnvimrToggle',         'ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle',         'bar tags' ]
let g:which_key_map_ll['h'] = [ '<C-W>s',                'split h']
let g:which_key_map_ll['v'] = [ '<C-W>v',                'split v']
let g:which_key_map_ll['m'] = [ ':MarkdownPreviewToggle',                'markdown preview']
let g:which_key_map_ll['t'] = [ ':FloatermNew --wintype=normal --height=15',                'terminal']
let g:which_key_map_ll['l'] = [ ':FloatermNew lazygit',                'lazygit']

let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ }


let g:which_key_map_ll.o = {
      \ 'name' : '+open' ,
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ }
