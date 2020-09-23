let g:which_key_map.c = {
      \ 'name' : '+codeCoc',
      \'r' : [':<Plug>(coc-rename)',                   'Rename'],
      \'F' : [':<Plug>(coc-format-selected)',          'Format'],
      \'a' : [':<Plug>(coc-codeaction-selected)',      'Action'],
      \'A' : [':<Plug>(coc-codeaction)',               'Action All'],
      \'f' : [':<Plug>(coc-fix-current)',              'Fix'],
      \'R' : [':<Plug>(coc-range-select)',              'Range'],
      \'k' : [':call <SID>show_documentation()',       'Documentation'],
      \'h' : [':CocCommand clangd.switchSourceHeader', 'Source/Header'],
      \ }

