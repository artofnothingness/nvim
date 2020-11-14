" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

syntax on
colorscheme onedark


hi LineNr       term=bold cterm=bold ctermfg=2 guifg=#00CF91 
hi CursorLineNR       term=bold cterm=bold ctermfg=2 guifg=#1EC9E8 guibg=#1B2423
hi HighlightedyankRegion term=bold ctermbg=0 guibg=#00CF91
