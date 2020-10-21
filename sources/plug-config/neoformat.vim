" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
      \ 'exe': 'clang-format-10',
      \ 'args': ['--style="{IndentWidth: 4, AccessModifierOffset: -4}"']
      \}

let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

