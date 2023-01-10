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
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`

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
          map({ 'n', 'v' }, '<leader>gs', ':Gitsigns stage_hunk<CR>', { desc = 'Git stage hunk' })
          map({ 'n', 'v' }, '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = 'Git reset hunk' })
          map('n', '<leader>gS', gs.stage_buffer, { desc = 'Git stage buffer' })
          map('n', '<leader>gu', gs.undo_stage_hunk, { desc = 'Git Undo stage hunk' })
          map('n', '<leader>gR', gs.reset_buffer, { desc = 'Git Reset buffer' })
          map('n', '<leader>gp', gs.preview_hunk, { desc = 'Git Preview hunk' })
          map('n', '<leader>gd', gs.diffthis, { desc = 'Git diff' })
          map('n', '<leader>gD', function()
            gs.diffthis '~'
          end, { desc = 'Git Diff' })

          -- Text object
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end,
      }
    end,
  },
}
