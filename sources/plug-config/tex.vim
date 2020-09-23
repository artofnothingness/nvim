let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'build',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" TOC settings
let g:vimtex_toc_config = {
    \ 'name' : 'TOC',
    \ 'layers' : ['content', 'todo', 'include'],
    \ 'resize' : 1,
    \ 'split_width' : 30,
    \ 'todo_sorted' : 0,
    \ 'show_help' : 1,
    \ 'show_numbers' : 1,
    \ 'mode' : 2,
    \}
