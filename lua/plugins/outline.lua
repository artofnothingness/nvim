return {
  'hedyhli/outline.nvim',
  config = function()
    vim.keymap.set('n', '<leader>co', '<cmd>Outline<CR>', { desc = 'Code Outline' })

    require('outline').setup {}
  end,
}
