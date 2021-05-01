vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_transparent = true

vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float	= true
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_comments = false

vim.cmd[[colorscheme tokyonight]]
require('look.galaxy-line-tokyo')


 vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
 vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
 vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
 vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})
