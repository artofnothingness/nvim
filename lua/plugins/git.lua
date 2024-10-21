return {
  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>gb', ':Git blame<CR>', desc = 'Git Blame' },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
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
          map('n', '<leader>gd', gs.diffthis, { desc = 'Git diff' })
          map('n', '<leader>gD', function()
            gs.diffthis '~'
          end, { desc = 'Git Diff' })
        end,
      }
    end,
  },
}
