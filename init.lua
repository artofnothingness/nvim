require('settings')
require('maps')
require('plugins')

local ok, _ = pcall(require, "tokyonight")
if ok then
    vim.cmd.colorscheme "tokyonight-night"
end
