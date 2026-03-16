return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local fzf = require 'fzf-lua'
    fzf.setup {
      keymap = {
        fzf = {
          ['ctrl-q'] = 'select-all+accept',
        },
      },

      files = {
        formatter = 'path.filename_first',
      },

      oldfiles = {
        formatter = 'path.filename_first',
      },

      buffers = {
        formatter = 'path.filename_first',
      },
    }
    vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = 'Find Buffers' })
    vim.keymap.set('n', '<leader>/', fzf.lgrep_curbuf, { desc = 'Find by Grep' })

    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Find Files' })
    vim.keymap.set('n', '<leader>fr', fzf.oldfiles, { desc = 'Find Recent Files ' })
    vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = 'Find current Word' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Find by Grep' })
    vim.keymap.set('n', '<leader>f,', fzf.resume, { desc = 'Find resume ("," for prev search)' })

    vim.keymap.set('n', '<leader>ft', fzf.tmux_buffers, { desc = 'Find Tmux buffers' })
    vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = 'Find Keymaps' })

    vim.keymap.set('n', '<leader>fdv', fzf.dap_variables, { desc = 'Find Debug Variables' })
    vim.keymap.set('n', '<leader>fdc', fzf.dap_commands, { desc = 'Find Debug Commands' })
    vim.keymap.set('n', '<leader>fdb', fzf.dap_breakpoints, { desc = 'Find Debug Breakpoints' })
    vim.keymap.set('n', '<leader>fdf', fzf.dap_frames, { desc = 'Find Debug Frames' })
  end,
}
