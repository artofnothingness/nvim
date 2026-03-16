return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>dw',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Workspace Diagnostics',
    },
    {
      '<leader>df',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Document Diagnostics',
    },
  },
}
