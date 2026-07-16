vim.pack.add {
  { src = 'https://github.com/romus204/tree-sitter-manager.nvim' },
}

require('tree-sitter-manager').setup {
  ensure_installed = {
    'cpp',
    'c',
    'python',
    'json',
    'cmake',
    'lua',
    'vim',
    'diff',
    'yaml',
    'markdown',
    'markdown_inline',
    'regex',
  },
  auto_install = true,
  highlight = true,
}

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'tree-sitter-manager.nvim' and kind == 'update' then
      if not ev.data.active then
        vim.cmd.packadd 'tree-sitter-manager.nvim'
      end
      vim.cmd 'TSUpdate'
    end
  end,
})
