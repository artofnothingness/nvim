return {
  'tpope/vim-sleuth',
  {
    'numToStr/Comment.nvim',
    opts = {},
  },
  {
    'danymat/neogen',
    config = true,
    dependencies = 'nvim-treesitter/nvim-treesitter',
    keys = {
      { '<leader>cg', ':Neogen<CR>', desc = 'Generate doc' },
    },
  },
}
