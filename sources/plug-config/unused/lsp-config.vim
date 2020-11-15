let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'nvim_lsp'.clangd.setup{ on_attach=require'completion'.on_attach }

 let g:completion_chain_complete_list = {
       \ 'default': [
       \    {'complete_items': ['lsp', 'buffers', 'tags', 'ts']},
       \  ]}

autocmd BufEnter * lua require'completion'.on_attach()


