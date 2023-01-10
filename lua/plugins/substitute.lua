return {
  'gbprod/substitute.nvim',
  config = function()
    require('substitute').setup()
    vim.keymap.set('n', 'S', require('substitute').operator, { noremap = true })
    vim.keymap.set('x', 'S', require('substitute').visual, { noremap = true })
  end,
}
