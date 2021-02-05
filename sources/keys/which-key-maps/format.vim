autocmd FileType c,cpp,objc nnoremap <buffer><A-f> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><A-f> :ClangFormat<CR>
autocmd FileType c,cpp,objc nmap <A-F> :ClangFormatAutoToggle<CR>

autocmd FileType python noremap  <buffer><A-f> :<C-u>Format<CR>
autocmd FileType python vnoremap <buffer><A-f> :Format<CR>
