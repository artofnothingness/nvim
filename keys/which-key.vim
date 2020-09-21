" Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

nmap <localleader> :<c-u>WhichKey  'm'<CR>
vmap <localleader> :<c-u>WhichKeyVisual  'm'<CR>
let g:which_key_map =  {}
let g:which_key_sep = '→'
" set timeoutlen=100

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

" Single mappings

let g:which_key_map['h']    = [ ':CocCommand clangd.switchSourceHeader', 'sw h/s']
let g:which_key_map['q']    = [ ':bdelete',                              'Kill Buffer']
let g:which_key_map['w']    = [ ':Buffers!',                             'Search Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols',                   'Search Symbols']

" LOCAL LEADER
" ###################################################################################################################################################################
" ###################################################################################################################################################################
" ###################################################################################################################################################################
" ###################################################################################################################################################################
let g:which_key_map_ll['R']    = [ ':RainbowToggle',                        'RainbowToggle']
let g:which_key_map_ll[' '] = [ ':Startify',                             'Startify' ]
let g:which_key_map_ll['e'] = [ ':CocCommand explorer',                  'Coc Explorer' ]
let g:which_key_map_ll['r'] = [ ':RnvimrToggle',                         'Ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle',                         'BarTags' ]
" let g:which_key_map_ll['v'] = [ ':Vista!!'                          , 'Vista']
let g:which_key_map_ll['_'] = [ '<C-W>s',                                'split below']
let g:which_key_map_ll['-'] = [ '<C-W>v',                                'split right']

let g:which_key_map_ll.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ }

let g:which_key_map_ll.R = {
      \ 'name' : '+ros' ,
      \ 'b' : [':!catkin build'                          , 'build'],
      \ 'm' : [':!python3 ~/.config/nvim/scripts/ros-compile-commands-merge.py' ,'merge compile commands'],
      \ 'c' : [":!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'" ,'set cmake flags'],
      \}

" s is for search
let g:which_key_map_ll.s = {
      \ 'name' : '+search' ,
      \ 's' : [':CocList -I symbols'  , 'symbols'],
      \ '/' : [':History/!'     , 'history'],
      \ ';' : [':Commands!'     , 'commands'],
      \ 'b' : [':Buffers!'      , 'open buffers'],
      \ 'c' : [':Commits!'      , 'commits'],
      \ 'C' : [':BCommits!'     , 'buffer commits'],
      \ 'f' : [':Files!'        , 'files'],
      \ 'F' : [':CocList floaterm'    , 'floaterms'],
      \ 'g' : [':GFiles!'       , 'git files'],
      \ 'G' : [':GFiles!?'      , 'modified git files'],
      \ 'h' : [':History!'      , 'file history'],
      \ 'H' : [':History!:'     , 'command history'],
      \ 'l' : [':Lines!'        , 'lines'] ,
      \ 'm' : [':Marks!'        , 'marks'] ,
      \ 'M' : [':Maps!'         , 'normal maps'] ,
      \ 't' : [':Tags!'         , 'tags'],
      \ 'T' : [':BTags!'        , 'buffer tags'],
      \ }

let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'f' : [':Flog'                             , 'Flog'],
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

let g:which_key_map_ll.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : ['<Plug>(coc-codeaction-selected)'     , 'action selected'],
      \ }

let g:which_key_map_ll.l.d = {
      \ 'name' : '+diagnostic' ,
      \ 'd' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ }

let g:which_key_map_ll.l.f = {
      \ 'name' : '+format' ,
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format line'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
call which_key#register('m',       "g:which_key_map_ll")
