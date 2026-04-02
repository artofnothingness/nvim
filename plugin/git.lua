vim.pack.add {
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/esmuellert/codediff.nvim' },
  { src = 'https://github.com/ibhagwan/fzf-lua' },
  { src = 'https://github.com/NeogitOrg/neogit' },
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
}

require('codediff').setup {
  diff = {
    layout = 'inline',
  },
}

require('gitsigns').setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then
        return ']c'
      end
      vim.schedule(function()
        gs.next_hunk()
      end)
      return '<Ignore>'
    end, { expr = true })

    map('n', '[c', function()
      if vim.wo.diff then
        return '[c'
      end
      vim.schedule(function()
        gs.prev_hunk()
      end)
      return '<Ignore>'
    end, { expr = true })

    -- Actions
    map('n', '<leader>gp', gs.preview_hunk, { desc = 'Git Preview hunk' })
  end,
}

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Show Neogit UI' })
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = 'Git Blame' })
