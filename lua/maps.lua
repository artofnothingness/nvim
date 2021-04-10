vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'm', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'

-- Move selected line / block of text in visual mode
-- vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 's',     ":HopChar2<CR>", { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ":HopLine<CR>", { noremap = false, silent = true })

-- LSP    
vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>')
vim.cmd('nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>')
vim.cmd('nnoremap <silent> <C-k> ::Lspsaga show_line_diagnostics<CR>')

vim.cmd('nnoremap <silent> <A-k> :Lspsaga hover_doc<CR>')

-- scroll up and down hover doc or scroll in definition preview
vim.cmd('nnoremap <silent> <C-f> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
vim.cmd('nnoremap <silent> <C-b> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')
