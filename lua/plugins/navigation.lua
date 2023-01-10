return {
  {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup {
        auto_save = 'current',
        disable_on_zoom = true,
      }
    end,
    keys = {
      { '<C-h>', '<cmd>lua require("Navigator").left()<CR>' },
      { '<C-k>', '<cmd>lua require("Navigator").up()<CR>' },
      { '<C-l>', '<cmd>lua require("Navigator").right()<CR>' },
      { '<C-j>', '<cmd>lua require("Navigator").down()<CR>' },
    },
  },
  {
    'rlane/pounce.nvim',
    opts = {
      accept_keys = 'JFKDLSAHGNUVRBYTMICEOXWPQZ',
      accept_best_key = '<enter>',
      multi_window = true,
      debug = false,
    },
    keys = {
      { 's', '<cmd>Pounce<CR>' },
    },
  },
}
