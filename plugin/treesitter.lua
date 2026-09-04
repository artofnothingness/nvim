vim.pack.add {
  { src = 'https://github.com/romus204/tree-sitter-manager.nvim' },
}

-- nvim-highlite's `after/queries/*/highlights.scm` override the default tree-sitter
-- highlight queries and rely on a custom directive `#offset-from!`. highlite only
-- registers that handler when it is loaded as the active colorscheme, so when using
-- the default theme the treesitter highlighter hits "No handler for offset-from!".
-- Register the handler globally so those query overrides work either way.
do
  vim.treesitter.query.add_directive('offset-from!', function(match, _, _, predicate, metadata)
    local from, capture_id = predicate[2], predicate[3]
    local start_row, start_col = predicate[4] or 0, predicate[5] or 0
    local end_row, end_col = predicate[6] or 0, predicate[7] or 0

    local nodes = match[capture_id]
    if nodes == nil then
      return
    end
    local node = type(nodes) == 'table' and nodes[1] or nodes

    if not metadata[capture_id] then
      metadata[capture_id] = {}
    end
    local range = metadata[capture_id].range or { node:range() }

    if from == 'end' then
      range[1] = range[3] + start_row
      range[2] = range[4] + start_col
      range[3] = range[3] + end_row
      range[4] = range[4] + end_col
    else
      range[3] = range[1] + end_row
      range[4] = range[2] + end_col
      range[1] = range[1] + start_row
      range[2] = range[2] + start_col
    end

    if range[1] < range[3] or (range[1] == range[3] and range[2] <= range[4]) then
      metadata[capture_id].range = range
    end
  end)
end

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
