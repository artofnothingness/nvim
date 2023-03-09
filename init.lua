require('settings')
require('maps')
require('plugins')

local ok, _ = pcall(require, "oxocarbon")
if ok then
    vim.cmd.colorscheme "oxocarbon"
end
