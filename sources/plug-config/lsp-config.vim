let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }

" let g:lsp_auto_enable = 1
" let g:lsp_signs_enabled = 1         " enable diagnostic signs / we use ALE for now
" let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
" let g:lsp_signs_error = {'text': '✖'}
" let g:lsp_signs_warning = {'text': '~'}
" let g:lsp_signs_hint = {'text': '?'}
" let g:lsp_signs_information = {'text': '!!'}
" let g:lsp_log_verbose = 1

" let g:lsp_log_file = expand('~/.config/nvim/vim-lsp.log')

"  let g:completion_chain_complete_list = {
"        \ 'default': [
"        \    {'complete_items': ['lsp', 'buffers', 'tags', 'ts']},
"        \  ]}
"
lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
let g:completion_enable_snippet = 'UltiSnips'
" autocmd BufEnter * lua require'completion'.on_attach()


