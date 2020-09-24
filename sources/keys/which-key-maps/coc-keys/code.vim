let g:which_key_map.c = {
      \ 'name' : '+codeCoc',
      \ }

nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-fix-current)

nnoremap <leader>cw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cs :CocSearch 
