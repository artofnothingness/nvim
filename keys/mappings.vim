" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <localleader>v <C-W>s
noremap <localleader>s <C-W>v


" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv
nmap < <<
nmap > >>

nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

vmap <C-_> :Commentary<CR>gv
nmap <leader>b :TagbarToggle<CR>

" NEW
nnoremap <silent> <BS> :let @/ = ''<Enter>

noremap J 5j
noremap K 5k

nnoremap vv _vg_
noremap H ^
noremap L $
onoremap H ^
onoremap L $
xnoremap H ^
xnoremap L g_

" Navigate over [l]ocation list.
nnoremap <silent> [l :lopen<Enter>
nnoremap <silent> [l :lprevious<Enter>
nnoremap <silent> ]l :lnext<Enter>
nnoremap <silent> [L :lfirst<Enter>
nnoremap <silent> ]L :llast<Enter>

" Navigate over [q]uickfix list.
nnoremap <silent> [q :cprevious<Enter>
nnoremap <silent> ]q :cnext<Enter>
nnoremap <silent> [Q :cfirst<Enter>
nnoremap <silent> ]Q :clast<Enter>

" Navigate over [b]uffer list.
nnoremap <silent> [b :bprevious<Enter>
nnoremap <silent> ]b :bnext<Enter>
nnoremap <silent> [B :bfirst<Enter>
nnoremap <silent> ]B :blast<Enter>

" Navigate over [a]rgument list.
nnoremap <silent> [a :previous<Enter>
nnoremap <silent> ]a :next<Enter>
nnoremap <silent> [A :first<Enter>
nnoremap <silent> ]A :last<Enter>

" Toggle spell checking.
" nnoremap <silent> <leader>s :set spell!<Enter>
nnoremap <space>K K
" Join lines with a minimum of two lines.
nnoremap <space>J J

nnoremap <space>p p=`]
nnoremap <space>P P=`]

cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" cnoremap <expr> <Tab> getcmdtype() ==# '/' \|\| getcmdtype() ==# '?' ? '<CR>/<C-r>/' : '<C-z>'
" cnoremap <expr> <S-Tab> getcmdtype() ==# '/' \|\| getcmdtype() ==# '?' ? '<CR>?<C-r>/' : '<S-Tab>'

map <localleader>Rm :!python3 ~/.config/nvim/scripts/ros-compile-commands-merge.py<CR>
map <localleader>Rb :!catkin build 
map <localleader>Rc :!catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'<CR>
