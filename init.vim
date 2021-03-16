function! SourceDirectory(file)
  for s:fPath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fPath
  endfor
endfunction

call SourceDirectory('$HOME/.config/nvim/plugins/')

lua require('plugins')
lua require('utils')
lua require('maps')
lua require('settings')

lua require('floaterm')
lua require('galaxy-line')
lua require('hop')
lua require('nv-tree')
lua require('quick-scope')
lua require('treesitter')

call SourceDirectory('$HOME/.config/nvim/keys')
colorscheme nvcode
