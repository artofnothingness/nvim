let g:which_key_map_ll.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/!'     , 'HistoryDir'],
      \ ';' : [':Commands!'     , 'Commands'],
      \ 'h' : [':History!'      , 'HistoryFile'],
      \ 'H' : [':History!:'     , 'HistoryCmd'],
      \ 'm' : [':Marks!'        , 'Marks'] ,
      \ 'M' : [':Maps!'         , 'Maps'] ,
      \ 't' : [':Tags!'         , 'Tags'],
      \ 'T' : [':BTags!'        , 'Btags'],
      \ }

nnoremap <silent> <c-f> :FZF <cr>
nmap // :BLines!<CR>
nmap ?? :Rg!<CR>
