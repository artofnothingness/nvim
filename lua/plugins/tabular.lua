return {
  'godlygeek/tabular',
  config = function()
    vim.keymap.set('v', '<leader>t,', ':Tabularize /,\\zs<CR>', { desc = '[T]abularize [,]' })
    vim.keymap.set('v', '<leader>t=', ':Tabularize /=<CR>', { desc = '[T]abularize [=]' })
  end,
}
