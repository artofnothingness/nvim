nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap gh :lua vim.lsp.buf.signature_help()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vr :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>va :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>

" let g:which_key_map.c = {
"       \ 'name' : '+codeCoc',
"       \ }

" let g:which_key_map.c.S = {
"       \ 'name' : '+Snippets',
"       \ 'e' : [':CocCommand snippets.editSnippets', 'CurrentFileType'],
"       \ 'c' : ['<Plug>(coc-convert-snippet)', 'ConvertToSnippet'],
"       \ }


