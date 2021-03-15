let g:which_key_map.c = {
      \ 'name' : '+codeCoc',
      \ }

let g:which_key_map.c.S = {
      \ 'name' : '+Snippets',
      \ 'e' : [':CocCommand snippets.editSnippets', 'CurrentFileType'],
      \ 'c' : ['<Plug>(coc-convert-snippet)', 'ConvertToSnippet'],
      \ }


let g:which_key_map.l = {
      \ 'name' : '+listCoc' ,
      \ 'd' : [':CocList diagnostics', 'Diagnostic'],
      \ 'e' : [':CocList extensions',  'Extensions'],
      \ 'c' : [':CocList commands',    'Commands'],
      \ 'o' : [':CocList outline',     'Outline'],
      \ 's' : [':CocList -I symbols',  'Symbols'],
      \ 'r' : [':CocListResume',       'Resume'],
      \ 'f' : [':CocList floaterm'    , 'floaterms'],
      \ 'j' : [':CocNext',       'Next'],
      \ 'k' : [':CocPrev',       'Resume'],
      \ }

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>cr <Plug>(coc-rename)
nmap <leader>cf <Plug>(coc-fix-current)

nnoremap <leader>cw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cs :CocSearch 

" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
