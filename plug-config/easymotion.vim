map ; <Plug>(easymotion-bd-jk)
nmap ; <Plug>(easymotion-overwin-line)
nmap f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)

" map <space>l <Plug>(easymotion-lineforward)
" map <space>j <Plug>(easymotion-j)
" map <space>k <Plug>(easymotion-k)
" map <space>h <Plug>(easymotion-linebackward)

map / <Plug>(easymotion-sn)
map / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1

" function! s:config_easyfuzzymotion(...) abort
"   return extend(copy({
"   \   'converters': [incsearch#config#fuzzyword#converter()],
"   \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
"   \   'keymap': {"\<CR>": '<Over>(easymotion)'},
"   \   'is_expr': 0,
"   \   'is_stay': 1
"   \ }), get(a:, 1, {}))
" endfunction

