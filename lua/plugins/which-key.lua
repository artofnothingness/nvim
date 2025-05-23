return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    icons = {
      mappings = false,
    },

    -- Document existing key chains
    spec = {
      { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
      { '<leader>f', group = 'Find' },
      { '<leader>d', group = 'Document' },
      { '<leader>w', group = 'Workspace' },
      { '<leader>g', group = 'Git' },
      { '<leader>e', group = 'File Browser' },
    },
  },
}
