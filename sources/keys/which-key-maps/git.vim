let g:which_key_map_ll.g = {
      \ 'name' : '+git' ,
      \ 'A' : [':Git add .'                        , 'Add all'],
      \ 'a' : [':Git add %'                        , 'Add current'],
      \ 'c' : [':Git commit'                       , 'Commit'],
      \ 'p' : [':Git push'                         , 'Push'],
      \ 'P' : [':Git pull'                         , 'Pull'],
      \ 'r' : [':GRemove'                          , 'Remove'],
      \ }

let g:which_key_map_ll.g.i = {
      \ 'name' : '+info',
      \ 'c' : [':Commits!',   'Commits'],
      \ 'C' : [':BCommits!',  'Buffer commits'],
      \ 'f' : [':Flog',       'Flog'],
      \ 'b' : [':Git blame',  'Blame'],
      \ 's' : [':Gstatus',    'Status'],
      \ 'l' : [':Git log',    'Log'],
      \ 'd' : [':Git diff',   'Diff'],
      \ 'D' : [':Gdiffsplit', 'Diff split'],
      \ 'F' : [':GFiles!',    'Git files'],
      \ 'm' : [':GFiles!?',   'Modified git files'],
      \ }

let g:which_key_map_ll.g.h = {
      \ 'name' : '+hunk' ,
      \ 'p' : ['<Plug>(GitGutterPreviewHunk)'      , 'Preview'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'Next'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'Prev'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'Undo'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'Stage'],
      \ }

