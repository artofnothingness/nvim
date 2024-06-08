return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('oil').setup()
      vim.keymap.set('n', '<localleader>o', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
