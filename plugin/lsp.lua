vim.pack.add {
  { src = 'https://github.com/williamboman/mason.nvim' },
  { src = 'https://github.com/williamboman/mason-lspconfig.nvim' },
  { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
  { src = 'https://github.com/j-hui/fidget.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}

require('mason').setup()
require('mason-lspconfig').setup()
require('fidget').setup()

vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines
  jump = { float = true },
}

local servers = {
  cmake = {},
  ruff = {},
  ty = {
    root_dir = vim.fs.root(0, { '.git', 'pyproject.toml', 'requirements.txt', '.venv' }),
  },

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

for name, config in pairs(servers) do
  vim.lsp.config(name, config)
  vim.lsp.enable(name)
end

vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>', { desc = 'Mason' })

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

    if client and client:supports_method('textDocument/documentHighlight', event.buf) then
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

    if client and client:supports_method('textDocument/inlayHint', event.buf) then
      map('<leader>ch', function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end, 'Toggle Inlay Hints')
    end
  end,
})
