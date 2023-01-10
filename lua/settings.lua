vim.g.have_nerd_font = true

vim.o.termguicolors = true
vim.opt.breakindent = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.signcolumn = 'yes' --Always show the signcolumn, otherwise it would shift the text each time

vim.opt.updatetime = 250 --Faster completion
vim.opt.timeoutlen = 300 --By default timeoutlen is 1000 ms

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.hlsearch = true
vim.opt.hidden = true
vim.wo.wrap = false

vim.opt.scrolloff = 10

vim.o.mouse = 'a' --Enable your mouse

vim.o.splitbelow = true --Horizontal splits will automatically be below
vim.o.splitright = true --Vertical splits will automatically be to the right

vim.o.conceallevel = 2 --So that I can see `` in markdown files

vim.o.smartindent = true --Makes indenting smart
vim.o.autoindent = true --Good auto indent

vim.o.cursorline = true --Enable highlighting of the current line

vim.o.showmode = false --We don't need to see things like -- INSERT -- anymore
vim.o.clipboard = 'unnamedplus' --Copy paste between vim and everything else

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.undofile = true
vim.opt.undolevels = 100000
