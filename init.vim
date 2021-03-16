function! SourceDirectory(file)
  for s:fPath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fPath
  endfor
endfunction

lua require('plugins')
lua require('maps')
lua require('settings')
lua require('utils')

lua require('a-floaterm')
lua require('a-galaxy-line')
lua require('a-nv-tree')
lua require('a-quick-scope')
lua require('a-treesitter')
lua require('a-hop')

lua require('a-git-blame')
lua require('a-git-neo')
lua require('a-git-signs')

lua require('a-lsp')
lua require('a-lsp.python')
lua require('a-lsp.clangd')
lua require('a-lspkind')

lua require('a-compe')
lua require('a-telescope')

lua require('colorscheme')

call SourceDirectory('$HOME/.config/nvim/vim/configs/')
call SourceDirectory('$HOME/.config/nvim/vim/maps/')
