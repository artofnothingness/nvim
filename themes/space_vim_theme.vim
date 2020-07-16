" onedark.vim override: Don't set a background color when running in a terminal;
hi Comment cterm=italic

syntax on
colorscheme space_vim_theme


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
