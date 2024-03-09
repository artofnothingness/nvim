return {
  'folke/trouble.nvim',
  dependencies = 'kyazdani42/nvim-web-devicons',
  config = function()
    vim.keymap.set(
      'n',
      '<leader>cdw',
      ':Trouble workspace_diagnostics<CR>',
      { desc = '[C]ode [D]iagnostics [W]orkspace' }
    )
    vim.keymap.set('n', '<leader>cdf', ':Trouble document_diagnostics<CR>', { desc = '[C]ode [D]iagnostics [F]ile' })
    vim.keymap.set('n', '<leader>cdq', ':Trouble quickfix<CR>', { desc = '[C]ode [D]iagnostics [Q]uickfix' })
  end,
}
