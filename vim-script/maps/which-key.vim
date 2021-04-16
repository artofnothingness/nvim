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

let g:which_key_map['k']    = [ ':bdelet',                               'Kill buffer']
let g:which_key_map['w']    = [ ':Telescope lsp_workspace_symbols',      'Find symbols']
let g:which_key_map['s']    = [ ':Telescope lsp_document_symbols',       'Find current symbols']
let g:which_key_map['f']    = [ ':Telescope find_files',                 'Find files']
let g:which_key_map['b']    = [ ':Telescope buffers',                    'Find buffers']
let g:which_key_map['g']    = [ ':Telescope live_grep',                  'Find grep']
let g:which_key_map['r']    = [ ':Telescope oldfiles',                   'Find recent']
let g:which_key_map['q']    = [ ':Telescope quickfix',                   'Find quickfix']
let g:which_key_map['c']    = [ ':Telescope lsp_code_actions',           'Find code actions']
let g:which_key_map['D']    = [ ':Telescope lsp_document_diagnostics',   'Find diagnostics']

let g:which_key_map['a']    = [ ':Lspsaga code_action',                  'LSP code action']
let g:which_key_map['R']    = [ ':Lspsaga rename',                       'LSP rename']
let g:which_key_map['?']    = [ ':Lspsaga signature_help',               'LSP signature']
let g:which_key_map['p']    = [ ':Lspsaga preview_definition',           'LSP preview']
let g:which_key_map['z']    = [ ':MaximizerToggle',                      'Zoom']
let g:which_key_map['*']    = [ ':Lspsaga lsp_finder',                   'LSP references']


let g:which_key_map.C = {
      \ 'name' : '+Change' ,
      \ 'o' : [":lua require('spectre').open()",                    'open']  ,
      \ 'v' : ["viw:lua require('spectre').open_visual()",          'open visual'],
      \ 'V' : [":lua require('spectre').open_visual()",             'visual V'],
      \ 'f' : ["viw:lua require('spectre').open_file_search()",     'file search'],
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
      \ 'b' : [':GitBlameToggle'                   , 'Git blame'],
      \ 'S' : [':Gstatus'                          , 'Git status'],
      \ 'd' : [':Git diff'                         , 'Git diff'],
      \ 'l' : [':Git log'                          , 'Git log'],
      \ 's' : [':StageHunk'                        , 'Hunk stage'],
      \ 'j' : [':NextHunk'                         , 'Hunk next'],
      \ 'k' : [':PrevHunk'                         , 'Hunk prev'],
      \ 'p' : [':PreviewHunk'                      , 'Hunk preview'],
      \ 'r' : [':ResetHunk'                        , 'Hunk reset'],
      \ 'u' : [':UndoStageHunk'                    , 'Hunk undo stage'],
      \ 'B' : [':GBrowse'                          , 'Gbrowse'],
      \ 'R' : [':ResetBuffer'                      , 'Reset buffer'],
      \ }

let g:which_key_map_ll['c'] = [ ':NvimTreeFindFile',     'NvimTree Current' ]
let g:which_key_map_ll['e'] = [ ':NvimTreeToggle',       'NvimTree Toggle' ]
let g:which_key_map_ll['r'] = [ ':RnvimrToggle',         'Ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle',         'Tag bar' ]
let g:which_key_map_ll['_'] = [ '<C-W>s',                'Split h']
let g:which_key_map_ll['-'] = [ '<C-W>v',                'Split v']
let g:which_key_map_ll['f'] = [ ':Telescope file_browser', 'Find file']
let g:which_key_map_ll['n'] = [ ':Neogit',                'Neogit']

let g:which_key_map_ll.p = {
      \ 'name' : '+Packer' ,
      \ 'u' : [':PackerUpdate'                     , 'Update'],
      \ 's' : [':PackerSync'                     , 'Sync'],
      \ 'C' : [':PackerClean'                     , 'Clean'],
      \ 'c' : [':PackerCompile'                     , 'Compile'],
      \ }

let g:which_key_map_ll.m = {
      \ 'name' : '+Markdown' ,
      \ 'm' : [':MarkdownPreviewToggle'                     , 'Preview'],
      \ }

let g:which_key_map_ll.i = {
      \ 'name' : '+Info' ,
      \ 'k' : [':Telescope keymaps'                     , 'Keymaps'],
      \ }

let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':GitBlameToggle'                   , 'Blame'],
      \ 'd' : [':Git diff'                         , 'Diff'],
      \ 'l' : [':Git log'                          , 'Log'],
      \ 'S' : [':Gstatus'                          , 'Status'],
      \ }


let g:which_key_map_ll.o = {
      \ 'name' : '+open' ,
      \ 'g' : [':FloatermNew lazygit'                           , 'Git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'Docker'],
      \ 'p' : [':FloatermNew python'                            , 'Python'],
      \ 'h' : [':FloatermNew htop'                              , 'Htop'],
      \ }
