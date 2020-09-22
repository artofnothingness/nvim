" Buffer Navigation
  nnoremap <TAB> :bnext<CR>
  nnoremap <S-TAB> :bprevious<CR>

"  Window Navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

" Faster Navigation
  noremap H ^
  noremap L $
  onoremap H ^
  onoremap L $
  xnoremap H ^
  xnoremap L g_
  noremap J 5j
  noremap K 5k


" No Highlight after search
  nnoremap <silent> <BS> :let @/ = ''<Enter>

