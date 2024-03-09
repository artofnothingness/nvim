return {
  'tpope/vim-sleuth',
  {
    'numToStr/Comment.nvim',
    opts = {},
    -- lazy = false,
  },
  {
    'danymat/neogen',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    keys = {
      { '<leader>cg', ':Neogen<CR>', desc = '[G]enerate doc' },
    },
  },
}
