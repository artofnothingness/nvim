vim.pack.add { 'https://github.com/folke/which-key.nvim' }

require('which-key').setup {
  icons = {
    mappings = false,
  },

  -- Document existing key chains
  spec = {
    { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
    { '<leader>f', group = 'Find' },
    { '<leader>w', group = 'Buffers' },
    { '<leader>g', group = 'Git' },
    { '<leader>e', group = 'File Browser' },
  },
}
