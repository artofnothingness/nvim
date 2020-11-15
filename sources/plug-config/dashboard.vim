let g:dashboard_default_executive ='clap'

nnoremap <silent> <Leader>r :DashboardFindHistory<CR>
nnoremap <silent> <Leader>f :DashboardFindFile<CR>
" nnoremap <silent> <Leader>cc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>g :DashboardFindWord<CR>
nnoremap <silent> <Leader>w :DashboardJumpMark<CR>
nnoremap <silent> e :DashboardNewFile<CR>

let g:dashboard_default_header = "commicgirl7"

let g:dashboard_custom_shortcut={
  \ 'find_history'       : 'SPC r  ',
  \ 'find_file'          : 'SPC f  ',
  \ 'find_word'          : 'SPC f a',
  \ 'new_file'           : 'e',
  \ 'last_session'       : 'M s l  ',
  \ 'book_marks'         : 'SPC f b',
  \ 'change_colorscheme' : 'SPC t c',
  \ }
