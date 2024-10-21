return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {}
    vim.keymap.set('n', '<A-x>', '<cmd>BufferLineCloseOthers<CR>', { desc = 'Close all buffers but current' })
  end,
}
