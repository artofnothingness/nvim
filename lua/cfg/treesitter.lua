require 'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = { "cpp", "c", "python", "cuda", "json", "cmake", "make", "bash", "lua", "vim", "yaml" },

  highlight = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },

  indent = {
    enable = true,
  },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,


  textobjects = {
    swap = {
      enable = true,
      swap_next = {
        ["]sa"] = "@parameter.inner",
      },
      swap_previous = {
        ["[sa"] = "@parameter.inner",
      },
    },
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']f'] = '@function.outer',
        [']c'] = '@class.outer',
        [']a'] = '@parameter.inner',
      },
      goto_next_end = {
        [']['] = '@function.outer',
        [']C'] = '@class.outer',
      },
      goto_previous_start = {
        ['[f'] = '@function.outer',
        ['[c'] = '@class.outer',
        ['[a'] = '@parameter.inner',
      },
      goto_previous_end = {
        ['[]'] = '@function.outer',
        ['[C'] = '@class.outer',
      },
    },
  },
}
