function! SourceDirectory(file)
  for s:fPath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fPath
  endfor
endfunction

