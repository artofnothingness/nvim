return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>cd'] = { name = '[C]ode [D]iagnostics', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['<leader>o'] = { name = '[O]bsidian', _ = 'which_key_ignore' },
      ['<leader>n'] = { name = '[N]abla', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>u'] = { name = '[U]ndo tree', _ = 'which_key_ignore' },
    }

    require('which-key').register({ ['<leader>t'] = { name = '[T]abularize', _ = 'which_key_ignore' } }, { mode = 'v' })
  end,
}
