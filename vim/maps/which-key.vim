nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

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

let g:which_key_map['k']    = [ ':bdelet',                               'Kill Buffer']
" s is for search powered by telescope
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'a' : [':Telescope lsp_code_actions'            , 'code_actions'],
      \ 'b' : [':Telescope buffers'                     , 'buffers'],
      \ 'B' : [':Telescope git_branches'                , 'git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'files'],
      \ 'g' : [':Telescope live_grep'                   , 'Grep'],
      \ 's' : [':Telescope symbols'                     , 'symbols'],
      \ 'w' : [':Telescope lsp_workspace_symbols'       , 'lsp_workspace_symbols'],
      \ 'W' : [':Telescope file_browser'                , 'file browser'],
      \ 'z' : [':Telescope current_buffer_fuzzy_find'   , 'buf_fuz_find'],
      \ 'r' : [':Telescope oldfiles'                    , 'recent files'],
      \ 'k' : [':Telescope keymaps'                     , 'keymaps'],
      \ 'm' : [':Telescope man_pages'                   , 'man_pages'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

let g:which_key_map.F = {
    \ 'name': '+fold',
    \ '1' : [':set foldlevel=1', 'level1'],
    \ '2' : [':set foldlevel=2', 'level2'],
    \ '3' : [':set foldlevel=3', 'level3'],
    \ '4' : [':set foldlevel=4', 'level4'],
    \ '5' : [':set foldlevel=5', 'level5'],
    \ '6' : [':set foldlevel=6', 'level6']
    \ }

let g:which_key_map_ll[' '] = [ ':Startify',            'Startify' ]
let g:which_key_map_ll['c'] = [ ':NvimTreeFindFile'                               , 'find current file' ]
let g:which_key_map_ll['e'] = [ ':NvimTreeToggle'                                 , 'explorer' ]
let g:which_key_map_ll['r'] = [ ':RnvimrToggle',        'Ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle',        'BarTags' ]
let g:which_key_map_ll['h'] = [ '<C-W>s',               'SplitHorizontal']
let g:which_key_map_ll['v'] = [ '<C-W>v',               'SplitVertical']

nmap <localleader>m <Plug>MarkdownPreviewToggle

let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ }

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':LspRename'                          , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }
