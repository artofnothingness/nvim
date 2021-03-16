function! SourceDirectory(file)
  for s:fPath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fPath
  endfor
endfunction

lua require('plugins')
lua require('maps')
lua require('settings')
lua require('utils')

lua require('floaterm')
lua require('galaxy-line')
lua require('nv-tree')
lua require('quick-scope')
lua require('treesitter')

lua require('telescope')

lua require('git-blame')
lua require('git-neo')
lua require('git-signs')

lua require('colorscheme')

call SourceDirectory('$HOME/.config/nvim/vim/configs/')
call SourceDirectory('$HOME/.config/nvim/vim/maps/')
