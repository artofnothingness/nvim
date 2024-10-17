return {
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    lazy = false,
    config = function()
      require('nvim-treesitter.configs').setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,

            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = { query = '@class.inner', desc = 'Select inner part of a class region' },
              ['as'] = { query = '@scope', query_group = 'locals', desc = 'Select language scope' },
            },
            selection_modes = {
              ['@parameter.outer'] = 'v', -- charwise
              ['@function.outer'] = 'V', -- linewise
              ['@class.outer'] = '<c-v>', -- blockwise
            },
            include_surrounding_whitespace = true,
          },
          swap = {
            enable = true,
            swap_next = {
              [']a'] = '@parameter.inner',
            },
            swap_previous = {
              ['[a'] = '@parameter.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              ['<M-j>'] = '@function.outer',
              [']]'] = { query = '@class.outer', desc = 'Next class start' },
              --
              -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
              [']o'] = '@loop.*',
              -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
              --
              -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
              -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
              [']s'] = { query = '@scope', query_group = 'locals', desc = 'Next scope' },
              [']z'] = { query = '@fold', query_group = 'folds', desc = 'Next fold' },
            },
            goto_next_end = {
              [']F'] = '@function.outer',
              [']['] = '@class.outer',
            },
            goto_previous_start = {
              ['<M-k>'] = '@function.outer',
              ['[['] = '@class.outer',
            },
            goto_previous_end = {
              ['[F'] = '@function.outer',
              ['[]'] = '@class.outer',
            },
          },
        },
      }
    end,
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    cmd = { 'TSUpdateSync' },
    version = false,
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'cpp',
          'c',
          'python',
          'cuda',
          'json',
          'cmake',
          'make',
          'bash',
          'lua',
          'vim',
          'diff',
          'yaml',
          'markdown',
          'markdown_inline',
          'regex',
        },

        highlight = {
          enable = true,
        },

        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<Enter>',
            node_incremental = '<Enter>',
            node_decremental = '<BS>',
          },
        },

        -- Install languages synchronously (only applied to `ensure_installed`)
        sync_install = false,
      }
    end,
  },
}
