return {
  'jbyuki/nabla.nvim',
  config = function()
    vim.keymap.set('n', '<leader>nn', require('nabla').popup, { desc = '[N]abla [N]otation' })
    vim.keymap.set('n', '<leader>nt', require('nabla').toggle_virt, { desc = '[N]abla [T]gogle' })
  end,
}
