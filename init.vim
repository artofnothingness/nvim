function! SourceDirectory(file)
  for s:fPath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fPath
  endfor
endfunction

call SourceDirectory('$HOME/.config/nvim/plugins/')
call SourceDirectory('$HOME/.config/nvim/plugins/configs')
call SourceDirectory('$HOME/.config/nvim/settings')
call SourceDirectory('$HOME/.config/nvim/keys')

lua require('plugins')

lua require('floaterm')
lua require('galaxy-line')
lua require('hop')
lua require('nv-tree')
lua require('quick-scope')
lua require('treesitter')

colorscheme nvcode
