" Map leader to which_key
" nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

nnoremap <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <localleader> :<c-u>WhichKeyVisual  ','<CR>
" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

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
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'Explorer' ]
let g:which_key_map['r'] = [ ':Ranger'                    , 'Ranger' ]
let g:which_key_map['g'] = [ ':Startify'                  , 'Startify' ]
let g:which_key_map['b'] = [ ':TagbarToggle'              , 'BarTags' ]

let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['t'] = [ ':CtrlPTag'                  , 'Tags' ]
let g:which_key_map['s'] = [ ':CocList -I symbols'        , 'Symbols' ]
  


" \ 'h' : [ 'cd %:h <CR>'   , 'cd current dir' ],

let g:which_key_map.c = {
      \ 'name' : '+Coc' ,
      \}

" s is for search
let g:which_key_map.f = {
      \ 'name' : '+Find' ,
      \ '/' : [':History/!'     , 'history'],
      \ ';' : [':Commands!'     , 'commands'],
      \ 'a' : [':Ag!'           , 'text Ag'],
      \ 't' : [':Rg!'           , 'text Rg'],
      \ 'b' : [':BLines!'       , 'current buffer'],
      \ 'B' : [':Buffers!'      , 'open buffers'],
      \ 'c' : [':Commits!'      , 'commits'],
      \ 'C' : [':BCommits!'     , 'buffer commits'],
      \ 'f' : [':Files!'        , 'files'],
      \ 'g' : [':GFiles!'       , 'git files'],
      \ 'G' : [':GFiles!?'      , 'modified git files'],
      \ 'h' : [':History!'      , 'file history'],
      \ 'H' : [':History!:'     , 'command history'],
      \ 'l' : [':Lines!'        , 'lines'] ,
      \ 'm' : [':Marks!'        , 'marks'] ,
      \ 'M' : [':Maps!'         , 'normal maps'] ,
      \ 'p' : [':Helptags!'     , 'help tags'] ,
      \ 'P' : [':Tags!'         , 'project tags'],
      \ 's' : [':Snippets!'     , 'snippets'],
      \ 'S' : [':Colors!'       , 'color schemes'],
      \ 'T' : [':BTags!'        , 'buffer tags'],
      \ 'w' : [':Windows!'      , 'search windows'],
      \ 'y' : [':Filetypes!'    , 'file types'],
      \ 'z' : [':FZF!'          , 'FZF'],
      \ }

" Register which key map
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")
