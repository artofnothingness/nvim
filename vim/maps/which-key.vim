nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

nnoremap <silent> <localleader> :<c-u>WhichKey  'm'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual  'm'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

let g:which_key_map_ll =  {}
let g:which_key_sep_ll = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

call which_key#register('<Space>', "g:which_key_map")
call which_key#register('m',       "g:which_key_map_ll")

" source all mappings in dir

call SourceDirectory('~/.config/nvim/vim/maps/which-key')
