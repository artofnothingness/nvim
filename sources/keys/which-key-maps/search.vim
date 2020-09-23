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

nnoremap <silent> <c-f> :FZF <cr>
nmap // :BLines!<CR>
nmap ?? :Rg!<CR>
