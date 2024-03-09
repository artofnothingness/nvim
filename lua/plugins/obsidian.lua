return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },

  config = function()
    require('obsidian').setup {
      templates = {
        subdir = 'Templates',
        date_format = '%Y-%m-%d',
        time_format = '%H-%M',
      },

      attachments = {
        img_folder = 'media/',
      },
      workspaces = {
        {
          name = 'personal',
          path = '~/vaults/personal',
        },
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },
    }

    vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', { desc = '[O]bsidian [O]pen' })
    vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', { desc = '[O]bsidian [N]ew' })
    vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', { desc = '[O]bsidian [B]acklinks' })
    vim.keymap.set('n', '<leader>fo', '<cmd>ObsidianSearch<CR>', { desc = '[F]ind [O]bsidian' })
    vim.keymap.set('n', '<leader>ol', '<cmd>ObsidianLinks<CR>', { desc = '[O]bsidian [L]inks' })
    vim.keymap.set('n', '<leader>ow', '<cmd>ObsidianWorkspace<CR>', { desc = '[O]bsidian [W]orkspace' })
    vim.keymap.set('n', '<leader>o,', '<cmd>ObsidianToday<CR>', { desc = '[O]obsidian [.] today' })
    vim.keymap.set('n', '<leader>o.', '<cmd>ObsidianYesterday<CR>', { desc = '[O]bsidian [,] yesterday' })
    vim.keymap.set('n', '<leader>op', '<cmd>ObsidianPasteImg<CR>', { desc = '[O]bsidian [P]aste' })
  end,
}
