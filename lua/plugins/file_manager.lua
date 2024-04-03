return {
  {
    'elihunter173/dirbuf.nvim',
    keys = {
      { '<localleader>d', '<CMD>Dirbuf<CR>', desc = '[D]irbuf' },
    },
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {
        view = {
          width = 55,
        },
      }
    end,
    keys = {
      { '\\', '<CMD>NvimTreeToggle<CR>', desc = 'Neotree' },
      { '<C-\\>', '<CMD>NvimTreeFindFile<CR>', desc = 'Neotree' },
    },
  },
  {
    'kevinhwang91/rnvimr',
    config = function()
      vim.g.rnvimr_enable_ex = 1
      vim.g.rnvimr_enable_picker = 1
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_hide_gitignore = 1
      vim.g.rnvimr_border_attr = { ['fg'] = -1, ['bg'] = -1 }
      vim.g.rnvimr_enable_bw = 1

      vim.g.rnvimr_action = {
        ['<C-t>'] = 'NvimEdit tabedit',
        ['<C-h>'] = 'NvimEdit split',
        ['<C-v>'] = 'NvimEdit vsplit',
        ['gb'] = 'JumpNvimCwd',
        ['cd'] = 'EmitRangerCwd',
      }
    end,
    keys = {
      { '<localleader>r', '<cmd>RnvimrToggle<CR>', desc = '[R]anger' },
    },
  },
}
