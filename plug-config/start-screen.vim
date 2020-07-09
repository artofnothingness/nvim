let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
let g:startify_bookmarks = [
            \ { 'i3': '~/.config/i3/config' },
            \ { 'nv': '~/.config/nvim/init.vim' },
            \ '~/dev',
            \ '~/ros',
            \ '~/Documents',
            \ ]
map <leader>g :Startify<CR>

" let g:startify_custom_header = [
" ]
