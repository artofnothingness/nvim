let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'A' : [':Git add .'                        , 'add all'],
      \ 'a' : [':Git add %'                        , 'add current'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ }

let g:which_key_map_ll.g.i = {
      \ 'name' : '+info' ,
      \ 'f' : [':Flog'                             , 'Flog'],
      \ 'b' : [':Git blame'                        , 'Blame'],
      \ 's' : [':Gstatus'                          , 'Status'],
      \ 'l' : [':Git log'                          , 'Log'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ }

let g:which_key_map_ll.g.h = {
      \ 'name' : '+hunk' ,
      \ 'p' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ }

