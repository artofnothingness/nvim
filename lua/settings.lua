vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

vim.cmd('set iskeyword+=-')                  --treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')                 --Don't pass messages to |ins-completion-menu|.

vim.o.hidden=true 
vim.wo.wrap=false 
vim.cmd('set whichwrap+=<,>,[,],h,l')

vim.o.encoding="utf-8"                      --The encoding displayed
vim.o.pumheight=10                        --Makes popup menu smaller
vim.o.fileencoding="utf-8"                  --The encoding written to file
vim.o.ruler=true              		  --                " Show the cursor position all the time
vim.o.cmdheight=2                         --More space for displaying messages
vim.o.mouse="a"                             --Enable your mouse
vim.o.splitbelow=true                          --Horizontal splits will automatically be below
vim.o.termguicolors=true
vim.o.splitright=true                          --Vertical splits will automatically be to the right
vim.o.conceallevel=0                      --So that I can see `` in markdown files
vim.o.smartindent=true                         --Makes indenting smart
vim.o.autoindent=true                          --Good auto indent

vim.o.expandtab=true                           --Converts tabs to spaces
vim.o.tabstop=8                           --Insert 2 spaces for a tab
vim.o.shiftwidth=2                        --Change the number of space characters inserted for indentation
vim.o.smarttab=true                            --Makes tabbing smarter will realize you have 2 vs 4
vim.o.softtabstop=0

vim.o.laststatus=2                        --Always display the status line

vim.o.cursorline=true                          --Enable highlighting of the current line

vim.o.showtabline=2                       --Always show tabs
vim.o.showmode=false                          --We don't need to see things like -- INSERT -- anymore
vim.wo.signcolumn="yes"                      --Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime=300                      --Faster completion
vim.o.timeoutlen=300                      --By default timeoutlen is 1000 ms
vim.o.clipboard="unnamedplus"               --Copy paste between vim and everything else
vim.o.incsearch=true

vim.o.smartcase=true
vim.o.ignorecase=true

vim.o.shiftround=true
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.completeopt="menuone,noinsert,noselect"
vim.o.autochdir = true

vim.o.foldlevelstart=999
vim.wo.foldmethod='expr'
vim.wo.foldexpr='nvim_treesitter#foldexpr()'

vim.o.backupdir="/home/alex/.config/nvim/utils/cache/backup" 
vim.o.undodir="/home/alex/.config/nvim/utils/cache/undo" 
vim.o.directory="/home/alex/.config/nvim/utils/cache/swap"

vim.o.undofile = true 
vim.o.undolevels=100000 
vim.o.updatecount=100 
vim.o.viewoptions="cursor,folds,unix,slash"
-- vim.o.so=999

vim.o.autoread = true  -- Read the file again if have been changed outside of Vim.
vim.o.switchbuf="useopen" -- Jump to the first open window that contains the specified buffer.

vim.cmd('set sessionoptions+=globals')

vim.cmd('au BufRead,BufNewFile *.launch set filetype=xml')
vim.cmd('au BufRead,BufNewFile *.cfg set filetype=python')
