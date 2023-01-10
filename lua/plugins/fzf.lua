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
    vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = '[F]ind [K]eymaps' })
    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = '[F]ind current [W]ord' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep_glob, { desc = '[F]ind by [G]rep' })
    vim.keymap.set('n', '<leader>fd', fzf.diagnostics_workspace, { desc = '[F]ind [D]iagnostics' })
    vim.keymap.set('n', '<leader>f,', fzf.resume, { desc = '[F]ind resume ("," for prev search)' })
    vim.keymap.set('n', '<leader>fr', fzf.oldfiles, { desc = '[F]ind [R]ecent Files ' })
    vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = '[F]ind [B]uffers' })
    vim.keymap.set('n', '<leader>ft', fzf.tmux_buffers, { desc = '[F]ind [T]mux buffers' })

    vim.keymap.set('n', '<leader>dfv', fzf.dap_variables, { desc = '[D]debug [F]ind [V]ariables' })
    vim.keymap.set('n', '<leader>dfc', fzf.dap_commands, { desc = '[D]debug [F]ind [C]ommands' })
    vim.keymap.set('n', '<leader>dfb', fzf.dap_breakpoints, { desc = '[D]debug [F]ind [B]reakpoints' })
    vim.keymap.set('n', '<leader>dff', fzf.dap_frames, { desc = '[D]debug [F]ind [F]rames' })
  end,
}
