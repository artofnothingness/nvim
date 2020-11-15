let g:which_key_map['k']    = [ ':bdelet',                  'Kill Buffer']
let g:which_key_map['b']    = [ ':Clap buffers',            'Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols',      'Symbols']
let g:which_key_map['g']    = [ ':Clap grep2',              'Grep']
let g:which_key_map['f']    = [ ':Clap files',              'Files']
let g:which_key_map['y']    = [ ':CocList -A --normal yank',                'Yanks']
let g:which_key_map['r']    = [ ':Clap history',             'Recently']
let g:which_key_map['F']    = [ ':Clap filer',               'Dir Filer']

nmap // :Clap lines<CR>
nmap ?? :Clap blines<CR>

autocmd FileType c,cpp,objc nnoremap <buffer><A-f> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><A-f> :ClangFormat<CR>
nmap <A-F> :ClangFormatAutoToggle<CR>

autocmd FileType python noremap  <buffer><A-f> :<C-u>Format<CR>
autocmd FileType python vnoremap <buffer><A-f> :Format<CR>
