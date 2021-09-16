vim.cmd('colorscheme highlite')
vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

vim.cmd('highlight QuickScopePrimary guifg=\'#EF390C\' gui=underline ctermfg=155 cterm=underline', false)
vim.cmd('highlight QuickScopeSecondary guifg=\'#ebcc34\' gui=underline ctermfg=81 cterm=underline')

vim.cmd('hi HopNextKey guifg=#EF390C ')
vim.cmd('hi HopNextKey1 guifg=#ebcc34 ')
vim.cmd('hi HopNextKey2 guifg=#ebcc34 ')
