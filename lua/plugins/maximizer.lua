return {
  {
    'szw/vim-maximizer',
    config = function()
      vim.keymap.set('n', '<leader>z', '<cmd>MaximizerToggle!<CR>', { desc = 'Zoom buffer' })
    end,
  },
}
