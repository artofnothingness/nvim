return {
  'hedyhli/outline.nvim',
  config = function()
    vim.keymap.set('n', '<leader>co', '<cmd>Outline<CR>', { desc = 'Toggle Outline' })

    require('outline').setup {}
  end,
}
