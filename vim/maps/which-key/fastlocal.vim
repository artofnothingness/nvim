let g:which_key_map_ll[' '] = [ ':Startify',            'Startify' ]
let g:which_key_map_ll['e'] = [ ':CocCommand explorer', 'Coc Explorer' ]
let g:which_key_map_ll['r'] = [ ':RnvimrToggle',        'Ranger' ]
let g:which_key_map_ll['b'] = [ ':TagbarToggle',        'BarTags' ]
let g:which_key_map_ll['v'] = [ ':Vista',        'Vista!!' ]
let g:which_key_map_ll['_'] = [ '<C-W>s',               'SplitDown']
let g:which_key_map_ll['-'] = [ '<C-W>v',               'SplitRight']
let g:which_key_map_ll['c'] = [ 'DashboardChangeColorscheme',               'DashboardChangeColorscheme']
let g:which_key_map_ll['t'] = [ 'ToggleTerm',               'ToggleTerm']

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


let g:which_key_map_ll.R = {
      \ 'name' : '+ros' ,
      \ 'b' : [':!catkin build'                          , 'build'],
      \ 'm' : [':!python3 /home/alex/.config/nvim/plug-data/scripts/ros-compile-commands-merge.py' ,'merge compile commands'],
      \ 'c' : [":!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'" ,'set cmake flags'],
      \}

nnoremap <silent> <localleader>r :RnvimrToggle<CR>
