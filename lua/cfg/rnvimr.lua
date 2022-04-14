vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_hide_gitignore = 1
vim.g.rnvimr_border_attr = {['fg'] = -1, ['bg'] =  -1}
vim.g.rnvimr_enable_bw = 1

vim.cmd("highlight link RnvimrNormal CursorLine")

vim.g.rnvimr_action = {
  ['<C-t>']  = 'NvimEdit tabedit',
  ['<C-h>']  = 'NvimEdit split',
  ['<C-v>']  = 'NvimEdit vsplit',
  ['gb']     = 'JumpNvimCwd',
  ['cd']     = 'EmitRangerCwd'
}

vim.cmd([[
let g:rnvimr_layout = {
          \ 'relative': 'editor',
          \ 'width': &columns,
          \ 'height': &lines - 2,
          \ 'col': 0,
          \ 'row': 0,
          \ 'style': 'minimal'
          \ }
]])
