let g:which_key_map_ll.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : ['<Plug>(coc-codeaction-selected)'     , 'action selected'],
      \ }

let g:which_key_map_ll.l.d = {
      \ 'name' : '+diagnostic' ,
      \ 'd' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ }

let g:which_key_map_ll.l.f = {
      \ 'name' : '+format' ,
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format line'],
      \ }

" Symbol renaming.
nmap <leader>lf <Plug>(coc-rename)

xmap <leader>lff <Plug>(coc-format-selected)
nmap <leader>lff <Plug>(coc-format-selected)

xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)

nmap <leader>cf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Mappings for CoCList
nnoremap <silent><nowait> <leader>ld  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <leader>le  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <leader>lc  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <leader>lo  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <leader>ss :<C-u>CocList -I symbols<cr>
" nnoremap <silent><nowait> <space>cj  :<C-u>CocNext<CR>
" nnoremap <silent><nowait> <space>ck  :<C-u>CocPrev<CR>
"
" Resume latest coc list.
nnoremap <silent><nowait> <leader>lor  :<C-u>CocListResume<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
