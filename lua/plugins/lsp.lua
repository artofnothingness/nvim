local cfg = function()
  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
    callback = function(event)
      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
      end

      map('gd', function()
        require('fzf-lua').lsp_definitions { jump1 = true }
      end, 'Goto Definition')

      map('gr', function()
        require('fzf-lua').lsp_references { jump1 = true }
      end, 'Goto References')

      map('gci', function()
        require('fzf-lua').lsp_implementations { jump1 = true }
      end, 'Goto Implementation')

      map('gct', function()
        require('fzf-lua').lsp_typedefs { jump1 = true }
      end, 'Type Definitions')

      map('gcD', vim.lsp.buf.declaration, 'Goto Declaration')

      map('gi', vim.lsp.buf.hover, 'Hover info')
      map('<leader>cr', vim.lsp.buf.rename, 'Code rename')
      map('<leader>ca', vim.lsp.buf.code_action, 'Code Action')

      map('s', require('fzf-lua').lsp_document_symbols, 'Find file symbols')
      map('<leader>fs', require('fzf-lua').lsp_live_workspace_symbols, 'Find workspace Symbols')

      local client = vim.lsp.get_client_by_id(event.data.client_id)

      if client and client.name == 'clangd' then
        map('<leader>cs', '<cmd>LspClangdSwitchSourceHeader<CR>', 'Cpp Switch source/header')
      end

      if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
        map('<leader>ch', function()
          vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
        end, 'Toggle Inlay Hints')
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

        vim.api.nvim_create_autocmd('LspDetach', {
          group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
          callback = function(event2)
            vim.lsp.buf.clear_references()
            vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event2.buf }
          end,
        })
      end
    end,
  })

  vim.diagnostic.config {
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = vim.diagnostic.severity.ERROR },
    signs = vim.g.have_nerd_font and {
      text = {
        [vim.diagnostic.severity.ERROR] = '󰅚 ',
        [vim.diagnostic.severity.WARN] = '󰀪 ',
        [vim.diagnostic.severity.INFO] = '󰋽 ',
        [vim.diagnostic.severity.HINT] = '󰌶 ',
      },
    } or {},
    virtual_text = {
      source = 'if_many',
      spacing = 2,
      format = function(diagnostic)
        local diagnostic_message = {
          [vim.diagnostic.severity.ERROR] = diagnostic.message,
          [vim.diagnostic.severity.WARN] = diagnostic.message,
          [vim.diagnostic.severity.INFO] = diagnostic.message,
          [vim.diagnostic.severity.HINT] = diagnostic.message,
        }
        return diagnostic_message[diagnostic.severity]
      end,
    },
  }

  local servers = {
    cmake = {},
    ruff = {},
    jedi_language_server = {},

    clangd = {
      cmd = { 'clangd', '--compile-commands-dir=/rep/ros2/build', '--header-insertion=never' },
    },

    lua_ls = {
      settings = {
        Lua = {
          runtime = { version = 'LuaJIT' },
          workspace = {
            checkThirdParty = false,
            -- Tells lua_ls where to find all the Lua files that you have loaded
            -- for your neovim configuration.
            --
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

  require('mason-lspconfig').setup {
    automatic_enable = vim.tbl_keys(servers or {}),
  }

  local ensure_installed = vim.tbl_keys(servers or {})
  vim.list_extend(ensure_installed, {
    'stylua',
    'markdownlint',
    'jsonlint',
    'cmakelint',
    'codelldb',
    'debugpy',
  })

  require('mason-tool-installer').setup { ensure_installed = ensure_installed }
  for server_name, config in pairs(servers) do
    vim.lsp.config(server_name, config)
  end

  vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>', { desc = 'Mason' })
end

return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'saghen/blink.cmp',
    },
    config = cfg,
  },
}
