return {
  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>gb', ':Git blame<CR>', desc = '[G]it [B]lame' },
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
          map({ 'n', 'v' }, '<leader>gs', ':Gitsigns stage_hunk<CR>', { desc = '[G]it stage hunk' })
          map({ 'n', 'v' }, '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = '[G]it reset hunk' })
          map('n', '<leader>gS', gs.stage_buffer, { desc = '[G]it stage buffer' })
          map('n', '<leader>gu', gs.undo_stage_hunk, { desc = '[G]it [U]ndo stage hunk' })
          map('n', '<leader>gR', gs.reset_buffer, { desc = '[G]it [R]eset buffer' })
          map('n', '<leader>gp', gs.preview_hunk, { desc = '[G]it [P]review hunk' })
          map('n', '<leader>gd', gs.diffthis, { desc = '[G]it [d]iff' })
          map('n', '<leader>gD', function()
            gs.diffthis '~'
          end, { desc = '[G]it [D]iff' })

          -- Text object
          map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end,
      }
    end,
  },
}
