let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
let g:startify_bookmarks = [
            \ { 'i3': '~/.config/i3/config' },
            \ { 'nv': '~/.config/nvim/init.vim' },
            \ { 'zs': '~/.zshrc' },
            \ { 'al': '~/.config/alacritty/alacritty.yml' },
            \ 
            \ { 'zc': '~/.config/zsh' },
            \ { 'dv': '~/dev' },
            \ { 'ro': '~/ros' },
            \ { 'do': '~/Documents' },
            \ ]

" map <leader>g :Startify<CR>
" let g:startify_session_delete_buffers = 1
let g:startify_session_sort = 1
" let g:startify_session_persistence = 0
" let g:startify_custom_header = [
" ]
