nnoremap <space>K K
nnoremap <space>J J

noremap <space>f :Neoformat<CR>

let g:which_key_map['h']    = [ ':CocCommand clangd.switchSourceHeader', 'sw h/s']
let g:which_key_map['q']    = [ ':bdelete',                              'Kill Buffer']
let g:which_key_map['w']    = [ ':Buffers!',                             'Search Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols',                   'Search Symbols']
let g:which_key_map['R']    = [ ':so $MYVIMRC',                          'source vimrc']
