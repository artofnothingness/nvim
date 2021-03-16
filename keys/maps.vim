" <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better Complition
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  cnoremap <C-j> <Down>
  cnoremap <C-k> <Up>

" Fast Save and Quit
  nnoremap <A-w> :w<CR>
  nnoremap <A-q> :q<CR>

  inoremap <A-w> <ESC>:w<CR>


" Better tabbing
  vnoremap < <gv
  vnoremap > >gv
  nmap < <<
  nmap > >>


  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)

nnoremap <silent>    <TAB> :BufferNext<CR>
nnoremap <silent>    <S-TAB> :BufferPrevious<CR>

nnoremap <silent>    <A-,> :BufferMovePrevious<CR>
nnoremap <silent>    <A-.> :BufferMoveNext<CR>

vmap <C-_> :Commentary<CR>gv
nmap <C-_> :Commentary<CR>

nnoremap vv _vg_

" Resize
  nnoremap <M-C-j>    :resize -2<CR>
  nnoremap <M-C-k>    :resize +2<CR>
  nnoremap <M-C-h>    :vertical resize -2<CR>
  nnoremap <M-C-l>    :vertical resize +2<CR>

  nnoremap <A-h> :tabprevious<CR>
  nnoremap <A-l> :tabnext<CR>
  nnoremap <A-n> :tab new<CR>
  nnoremap <A-c> :tab split<CR>

" Window Navigation
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

  noremap <A-j> 10j
  noremap <A-k> 10k

" Escape from instert
  inoremap jk <esc>
  inoremap kj <esc>

  nnoremap U J

" No Highlight after search
  nnoremap <silent> <BS> :let @/ = ''<Enter>

" Terminal
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>

" Plugins
nmap <localleader>m <Plug>MarkdownPreviewToggle

autocmd FileType c,cpp,objc nnoremap <buffer><A-f> :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><A-f> :ClangFormat<CR>
autocmd FileType c,cpp,objc nmap <A-F> :ClangFormatAutoToggle<CR>

autocmd FileType python noremap  <buffer><A-f> :<C-u>Format<CR>
autocmd FileType python vnoremap <buffer><A-f> :Format<CR>

nnoremap <silent><F4> :MaximizerToggle<CR>
vnoremap <silent><F4> :MaximizerToggle<CR>gv
inoremap <silent><F4> <C-o>:MaximizerToggle<CR>

nnoremap <F6> :UndotreeToggle<CR>
