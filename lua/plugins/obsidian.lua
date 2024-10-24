return {
  'epwalsh/obsidian.nvim',

  enabled = false,
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
      notes_subdir = 'zettelkasten',

      note_id_func = function(title)
        -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
        -- In this case a note with the title 'My new note' will be given an ID that looks
        -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
        local suffix = ''
        if title ~= nil then
          -- If title is given, transform it into valid file name.
          suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
        else
          -- If title is nil, just add 4 random uppercase letters to the suffix.
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return tostring(os.time()) .. '-' .. suffix
      end,

      daily_notes = {
        folder = 'dailies',
        date_format = '%Y-%m-%d',
        alias_format = '%-d %B, %Y',
        template = nil,
      },

      templates = {
        subdir = 'templates',
        date_format = '%Y-%m-%d',
        time_format = '%H-%M',
      },

      attachments = {
        img_folder = 'media/',
      },

      image_name_func = function()
        return string.format('%s-', os.time())
      end,

      workspaces = {
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },
    }

    vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', { desc = 'Obsidian Open' })
    vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', { desc = 'Obsidian New' })
    vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', { desc = 'Obsidian Backlinks' })
    vim.keymap.set('n', '<leader>of', '<cmd>ObsidianQuickSwitch<CR>', { desc = 'Obsidian Find' })
    vim.keymap.set('n', '<leader>fo', '<cmd>ObsidianQuickSwitch<CR>', { desc = 'Find Oobsidian' })
    vim.keymap.set('n', '<leader>og', '<cmd>ObsidianSearch<CR>', { desc = 'Obsidian Grep' })
    vim.keymap.set('n', '<leader>ol', '<cmd>ObsidianLinks<CR>', { desc = 'Obsidian Links' })
    vim.keymap.set('n', '<leader>ow', '<cmd>ObsidianWorkspace<CR>', { desc = 'Obsidian Workspace' })
    vim.keymap.set('n', '<leader>o.', '<cmd>ObsidianToday<CR>', { desc = 'Obsidian . today' })
    vim.keymap.set('n', '<leader>o,', '<cmd>ObsidianYesterday<CR>', { desc = 'Obsidian , yesterday' })
    vim.keymap.set('n', '<leader>op', '<cmd>ObsidianPasteImg<CR>', { desc = 'Obsidian Paste' })
    vim.keymap.set('n', '<leader>or', '<cmd>ObsidianRename<CR>', { desc = 'Obsidian Rename' })
    vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianTags<CR>', { desc = 'Obsidian Tags' })
  end,
}
