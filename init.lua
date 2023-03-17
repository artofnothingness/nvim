require('settings')
require('maps')
require('plugins')

local ok, _ = pcall(require, "doom-one")
if ok then
    vim.cmd.colorscheme "doom-one"
end
