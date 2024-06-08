local cfg = function()
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
    callback = function(event)
      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
      end

      map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
      map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
      map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
      map('gtD', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
      map('<leader>fS', require('telescope.builtin').lsp_document_symbols, '[F]ind file [s]ymbols')
      map('<leader>fs', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[F]ind workspace [S]ymbols')
      map('<leader>cr', vim.lsp.buf.rename, '[C]ode [r]ename')
      map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
      map('<leader>ci', vim.lsp.buf.hover, '[C]ode Documentation [I]nfo')
      map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

      map('[d', vim.diagnostic.goto_prev, 'Go to previous [D]iagnostic message')
      map(']d', vim.diagnostic.goto_next, 'Go to next [D]iagnostic message')

      -- The following two autocommands are used to highlight references of the
      -- word under your cursor when your cursor rests there for a little while.
      --    See `:help CursorHold` for information about when this is executed
      --
      -- When you move your cursor, the highlights will be cleared (the second autocommand).
      local client = vim.lsp.get_client_by_id(event.data.client_id)

      if client and client.name == 'clangd' then
        map('<f2>', ':ClangdSwitchSourceHeader<CR>', 'ClangdSwitchSourceHeader')
      end

      if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
        map('<leader>th', function()
          vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end, '[T]oggle Inlay [H]ints')
      end

      if client and client.server_capabilities.documentHighlightProvider then
        local highlight_augroup = vim.api.nvim_create_augroup('lsp-highlight', { clear = false })

        vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
          buffer = event.buf,
          group = highlight_augroup,
          callback = vim.lsp.buf.document_highlight,
        })

        vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
          buffer = event.buf,
          group = highlight_augroup,
          callback = vim.lsp.buf.clear_references,
        })
      end
    end,
  })

  vim.api.nvim_create_autocmd('LspDetach', {
    group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
    callback = function(event)
      vim.lsp.buf.clear_references()
      vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event.buf }
    end,
  })

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

  local servers = {
    cmake = {},
    ruff = {},
    jedi_language_server = {},

    clangd = {
      cmd = { 'clangd', '--compile-commands-dir=/rep/ros2/build', '--header-insertion=never' },
      root_dir = require('lspconfig.util').root_pattern '.git',
    },

    lua_ls = {
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          workspace = {
            checkThirdParty = false,
            -- Tells lua_ls where to find all the Lua files that you have loaded
            -- for your neovim configuration.
            library = {
              '${3rd}/luv/library',
              unpack(vim.api.nvim_get_runtime_file('', true)),
            },
            -- If lua_ls is really slow on your computer, you can try this instead:
            -- library = { vim.env.VIMRUNTIME },
          },
          completion = {
            callSnippet = 'Replace',
          },
          -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
          -- diagnostics = { disable = { 'missing-fields' } },
        },
      },
    },
  }

  require('mason').setup()

  local ensure_installed = vim.tbl_keys(servers or {})
  vim.list_extend(ensure_installed, {
    'stylua',
    'markdownlint',
    'jsonlint',
    'cmakelint',
  })

  require('mason-tool-installer').setup { ensure_installed = ensure_installed }

  require('mason-lspconfig').setup {
    handlers = {
      function(server_name)
        local server = servers[server_name] or {}
        -- This handles overriding only values explicitly passed
        -- by the server configuration above. Useful when disabling
        -- certain features of an LSP (for example, turning off formatting for tsserver)
        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        require('lspconfig')[server_name].setup(server)
      end,
    },
  }

  vim.keymap.set('n', '<localleader>m', '<cmd>Mason<CR>', { desc = '[M]ason' })

  -- Add additional capabilities supported by nvim-cmp
  vim.diagnostic.config {
    virtual_text = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = ' ',
        [vim.diagnostic.severity.WARN] = ' ',
        [vim.diagnostic.severity.HINT] = ' ',
        [vim.diagnostic.severity.INFO] = ' ',
      },
    },
    underline = true,
    update_in_insert = false,
    severity_sort = false,
  }
end

return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = cfg,
  },
}
