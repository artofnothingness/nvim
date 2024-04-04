return {
  {
    'elihunter173/dirbuf.nvim',
    keys = {
      { '<localleader>d', '<CMD>Dirbuf<CR>', desc = '[D]irbuf' },
    },
  },
  {
    'kelly-lin/ranger.nvim',
    config = function()
      require('ranger-nvim').setup {
        replace_netrw = true,
        -- enable_cmds = false,
        ui = {
          height = 0.95,
          width = 1.0,
          x = 0.0,
          y = 0.0,
        },
      }
      vim.api.nvim_set_keymap('n', '<localleader>r', '', {
        noremap = true,
        callback = function()
          require('ranger-nvim').open(true)
        end,
      })
    end,
  },
}
