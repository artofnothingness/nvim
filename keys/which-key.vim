" Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>
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

let g:which_key_map['h'] = [ ':CocCommand clangd.switchSourceHeader'                     , 'cpp switch h/s']
" Leader

 " Local Leader
let g:which_key_map_ll['e'] = [ ':CocCommand explorer'              , 'Explorer' ]
let g:which_key_map_ll['r'] = [ ':Ranger'                           , 'Ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle'                     , 'BarTags' ]
let g:which_key_map_ll['v'] = [ ':Vista!!'                          , 'Vista']
let g:which_key_map_ll['j'] = [ '<C-W>s'                            , 'split below']
let g:which_key_map_ll['l'] = [ '<C-W>v'                            , 'split right']
let g:which_key_map_ll['d'] = [ 'cd %:h'                            , 'current dir']
let g:which_key_map_ll['g'] = [ ':Startify'                         , 'Startify' ]
let g:which_key_map_ll['s'] = [ ':CocCommand snippets.editSnippets' , 'Snippets']
let g:which_key_map_ll['u'] = [ ':UndotreeToggle'                   , 'UndoTree']


let g:which_key_map_ll.c = {
      \ 'name' : '+configs' ,
      \ 'c' : [':CocConfig'                           ,'coc'],
      \ 'v' : [':e $MYVIMRC'                          ,'vim'],
      \ 'i' : [':e ~/.config/i3/config'               ,'i3'],
      \ 'a' : [':e ~/.config/alacritty/alacritty.yml' ,'alacritty'],
      \ 'z' : [':e ~/.zshrc'                          ,'zsh'],
      \}



let g:which_key_map_ll.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew htop'                              , 'htop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ 'p' : [':FloatermNew python3'                           , 'python3'],
      \ }

" let g:which_key_map.h = {
"       \ 'name' : '+GitGutter' ,
"       \}



let g:which_key_map.r = {
      \ 'name' : '+ros' ,
      \ 'b' : [':!catkin build'                          , 'build'],
      \ 'm' : [':!python3 ~/.config/nvim/scripts/ros-compile-commands-merge.py' ,'merge compile commands'],
      \ 'c' : [":!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'" ,'set cmake flags'],
      \}

" s is for search
let g:which_key_map.s = {
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
      \ 'p' : [':Helptags!'     , 'help tags'] ,
      \ 't' : [':Tags!'         , 'tags'],
      \ 'T' : [':BTags!'        , 'buffer tags'],
      \ 'w' : [':Windows!'      , 'search windows'],
      \ 'y' : [':Filetypes!'    , 'file types'],
      \ }

      " \ 'a' : [':Ag!'           , 'text Ag'],

let g:which_key_map.g = {
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

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : ['<Plug>(coc-codeaction-selected)'     , 'action selected'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'D' : [':CocDisable'                         , 'disable CoC'],
      \ 'E' : [':CocEnable'                          , 'enable CoC'],
      \ }

let g:which_key_map.l.d = {
      \ 'name' : '+diagnostic' ,
      \ 'd' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['write | edit | TSBufEnable highlight'  , 'syntax reset'],
      \ }

let g:which_key_map.l.f = {
      \ 'name' : '+format' ,
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format line'],
      \ }

let g:which_key_map.l.o = {
      \ 'name' : '+others' ,
      \ 'A' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'o' : [':CocList outline'                    , 'outline'],
      \ 's' : [':CocList snippets'                   , 'snippets'],
      \ 'n' : [':CocNext'                            , 'next action'],
      \ 'p' : [':CocPrev'                            , 'prev action'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'a' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'O' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'r' : [':CocListResume'                      , 'resume list'],
      \ 'u' : [':CocUpdate'                          , 'update CoC'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ }

" Register which key map
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',',       "g:which_key_map_ll")
