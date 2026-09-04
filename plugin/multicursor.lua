local mc_ns = vim.api.nvim_create_namespace('nvim.multicursor')

vim.keymap.set('n', '<A-l>', function()
  vim.api.nvim_buf_clear_namespace(0, mc_ns, 0, -1)
end, { desc = 'Clear multicursors' })
