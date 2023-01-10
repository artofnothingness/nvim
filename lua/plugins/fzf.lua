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
    }
    vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = 'Find Keymaps' })
    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Find Files' })
    vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = 'Find current Word' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep_glob, { desc = 'Find by Grep' })
    vim.keymap.set('n', '<leader>fd', fzf.diagnostics_workspace, { desc = 'Find Diagnostics' })
    vim.keymap.set('n', '<leader>f,', fzf.resume, { desc = 'Find resume ("," for prev search)' })
    vim.keymap.set('n', '<leader>fr', fzf.oldfiles, { desc = 'Find Recent Files ' })
    vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'Find Buffers' })
    vim.keymap.set('n', '<leader>ft', fzf.tmux_buffers, { desc = 'Find Tmux buffers' })

    vim.keymap.set('n', '<leader>dfv', fzf.dap_variables, { desc = 'Debug Find Variables' })
    vim.keymap.set('n', '<leader>dfc', fzf.dap_commands, { desc = 'Debug Find Commands' })
    vim.keymap.set('n', '<leader>dfb', fzf.dap_breakpoints, { desc = 'Debug Find Breakpoints' })
    vim.keymap.set('n', '<leader>dff', fzf.dap_frames, { desc = 'Debug Find Frames' })
  end,
}
