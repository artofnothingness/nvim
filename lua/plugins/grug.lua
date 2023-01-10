return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup {}

    vim.keymap.set('n', '<leader>s', '<CMD>GrugFar<CR>', { desc = 'Search' })
  end,
}
