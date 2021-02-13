function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:which_key_map['k']    = [ ':bdelet',                               'Kill Buffer']
let g:which_key_map['b']    = [ ':Clap buffers',                         'Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols',                   'Symbols']
let g:which_key_map['g']    = [ ':Clap grep2',                           'Grep']
let g:which_key_map['f']    = [ ':Clap files',                           'Files']
let g:which_key_map['y']    = [ ':CocList -A --normal yank',             'Yanks']
let g:which_key_map['r']    = [ ':Clap history',                         'History']
let g:which_key_map['F']    = [ ':Clap filer',                           'Dir Filer']
let g:which_key_map['m']    = [ ':Clap marks',                           'Marks']
let g:which_key_map['t']    = [ ':Clap proj_tags',                           'Tags']


nmap // :Clap lines<CR>

autocmd FileType c,cpp,objc noremap <leader>1 :CocCommand clangd.switchSourceHeader<CR>
nnoremap <silent> <leader>2 :call <SID>show_documentation()<CR>
