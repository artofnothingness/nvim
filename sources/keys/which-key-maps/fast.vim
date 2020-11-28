let g:which_key_map['k']    = [ ':bdelet',                               'Kill Buffer']
let g:which_key_map['b']    = [ ':Clap buffers',                         'Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols',                   'Symbols']
let g:which_key_map['g']    = [ ':Clap grep2',                           'Grep']
let g:which_key_map['f']    = [ ':Clap files',                           'Files']
let g:which_key_map['y']    = [ ':CocList -A --normal yank',             'Yanks']
let g:which_key_map['h']    = [ ':Clap history',                         'History']
let g:which_key_map['F']    = [ ':Clap filer',                           'Dir Filer']
let g:which_key_map['m']    = [ ':Clap marks',                           'Marks']

" let g:which_key_map['4']    = [ ':CocCommand clangd.switchSourceHeader', 'Switch Source/Header']

nmap // :Clap lines<CR>

autocmd FileType c,cpp,objc nnoremap <buffer><A-f> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><A-f> :ClangFormat<CR>
autocmd FileType c,cpp,objc nmap <A-F> :ClangFormatAutoToggle<CR>

autocmd FileType python noremap  <buffer><A-f> :<C-u>Format<CR>
autocmd FileType python vnoremap <buffer><A-f> :Format<CR>

autocmd FileType c,cpp,objc vnoremap <buffer><A-f> :ClangFormat<CR>

autocmd FileType c,cpp,objc noremap <leader>1 :CocCommand clangd.switchSourceHeader<CR>


nmap <leader>0 :colo goodwolf<CR>
nmap <leader>9 :colo badwolf<CR>
