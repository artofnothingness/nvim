return {
  { 'dnlhc/glance.nvim' },
  { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons', config = true },
  { 'norcalli/nvim-colorizer.lua', opts = {} },
  {
    'windwp/windline.nvim',
    event = 'VeryLazy',
    config = function()
      require 'wlsample.evil_line'
    end,
  },

  {
    'nvim-zh/colorful-winsep.nvim',
    config = function()
      require('colorful-winsep').setup {
        highlight = {
          bg = '#16161E',
          fg = '#1F3442',
        },
        interval = 0,
        no_exec_files = { 'packer', 'TelescopePrompt', 'mason', 'CompetiTest', 'NvimTree' },
      }
    end,
    event = { 'WinNew' },
  },
  { 'stevearc/dressing.nvim' },
  {
    'folke/noice.nvim',
    config = function()
      require('noice').setup {
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true,
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },

        messages = {
          -- NOTE: If you enable messages, then the cmdline is enabled automatically.
          -- This is a current Neovim limitation.
          enabled = false, -- enables the Noice messages UI
          view = 'notify', -- default view for messages
          view_error = 'notify', -- view for errors
          view_warn = 'notify', -- view for warnings
          view_history = 'messages', -- view for :messages
          view_search = 'virtualtext', -- view for search count messages. Set to `false` to disable
        },
      }
    end,
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
      require('ibl').setup {
        whitespace = {
          remove_blankline_trail = true,
        },
      }
    end,
  },
  {
    'SmiteshP/nvim-navic',
    lazy = false,
    config = function()
      require('nvim-navic').setup {
        lsp = {
          auto_attach = true,
          preference = nil,
        },
      }
    end,
    dependencies = 'neovim/nvim-lspconfig',
  },
  {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
    },
    opts = {},
  },
}
