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
      { '<leader>o', group = 'Obsidian' },
      { '<leader>d', group = 'Debug' },
      { '<leader>g', group = 'Git' },
    },
  },
}
