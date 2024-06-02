return {
  {
    'szw/vim-maximizer',
    config = function()
      vim.keymap.set('n', '<leader>Z', '<cmd>MaximizerToggle!<CR>', { desc = '[Z]oom buffer' })
    end,
  },
}
