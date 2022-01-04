vim.cmd('colorscheme highlite')


vim.cmd('highlight QuickScopePrimary guifg=\'#EF390C\' gui=underline ctermfg=155 cterm=underline', false)
vim.cmd('highlight QuickScopeSecondary guifg=\'#ebcc34\' gui=underline ctermfg=81 cterm=underline')

vim.cmd('hi HopNextKey guifg=#EF390C ')
vim.cmd('hi HopNextKey1 guifg=#ebcc34 ')
vim.cmd('hi HopNextKey2 guifg=#ebcc34 ')

vim.fn.sign_define("DiagnosticSignError",
    {text = "", texthl = "LspDiagnosticsSignError"})

vim.fn.sign_define("DiagnosticSignWarning",
    {text = "", texthl = "LspDiagnosticsSignError"})

vim.fn.sign_define("DiagnosticSignInformation",
    {text = "", texthl = "LspDiagnosticsSignInformation"})

vim.fn.sign_define("DiagnosticSignHint",
    {text = "", texthl = "LspDiagnosticsSignHint"})
