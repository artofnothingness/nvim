return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require('oil').setup()
      vim.keymap.set('n', '<localleader>o', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.keymap.set('n', '\\', '<CMD>NvimTreeToggle<CR>', { desc = 'Open directory' })

      local function on_attach(bufnr)
        local api = require 'nvim-tree.api'

        local function edit_or_open()
          local node = api.tree.get_node_under_cursor()

          if node.nodes ~= nil then
            -- expand or collapse folder
            api.node.open.edit()
          else
            -- open file
            api.node.open.edit()
            -- Close the tree if file was opened
            api.tree.close()
          end
        end

        local function vsplit_preview()
          local node = api.tree.get_node_under_cursor()

          if node.nodes ~= nil then
            api.node.open.edit()
          else
            api.node.open.vertical()
          end
          api.tree.focus()
        end

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.set('n', 'l', edit_or_open, opts 'Edit Or Open')
        vim.keymap.set('n', 'L', vsplit_preview, opts 'Vsplit Preview')
        vim.keymap.set('n', 'h', api.tree.collapse_all, opts 'Close')
        vim.keymap.set('n', 'H', api.tree.close, opts 'Collapse All')
      end

      require('nvim-tree').setup { on_attach = on_attach }
    end,
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
