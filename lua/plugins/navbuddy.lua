return {
  'SmiteshP/nvim-navbuddy',
  dependencies = {
    'SmiteshP/nvim-navic',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    window = {
      border = 'rounded',
      size = '90%',
      position = '50%',
      scrolloff = nil,
      sections = {
        left = {
          size = '10%',
          border = nil,
        },
        mid = {
          size = '60%',
          border = nil,
        },
        right = {
          border = nil,
          preview = 'leaf',
        },
      },
    },
    lsp = { auto_attach = true },
  },
  keys = {
    { '<leader>cn', '<cmd>Navbuddy<CR>', desc = 'Navigate' },
  },
}
