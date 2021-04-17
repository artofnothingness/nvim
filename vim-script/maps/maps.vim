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

vmap <C-_> :Commentary<CR>gv
nmap <C-_> :Commentary<CR>

" Resize
nnoremap <M-C-j>    :resize -2<CR>
nnoremap <M-C-k>    :resize +2<CR>
nnoremap <M-C-h>    :vertical resize -2<CR>
nnoremap <M-C-l>    :vertical resize +2<CR>

" Faster Navigation
noremap H ^
noremap L $
onoremap H ^
onoremap L $
xnoremap H ^
xnoremap L g_

noremap J 5j
noremap K 5k

" Escape from instert
inoremap jk <esc>
inoremap kj <esc>

nnoremap U J

" No Highlight after search
nnoremap <silent> <BS> :let @/ = ''<Enter>

" Plugins
autocmd FileType c,cpp,objc nnoremap <buffer><A-f> :<C-u>ClangFormat<CR>
autocmd FileType python noremap  <buffer><A-f> :<C-u>Format<CR>
autocmd FileType python vnoremap <buffer><A-f> :Format<CR>
nnoremap <F6> :UndotreeToggle<CR>

" Compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

