let g:startify_ascii = [
            \ "      .            .      ",
            \ "    .,;'           :,.    ",
            \ "  .,;;;,,.         ccc;.  ",
            \ ".;c::::,,,'        ccccc: ",
            \ ".::cc::,,,,,.      cccccc.",
            \ ".cccccc;;;;;;'     llllll.",
            \ ".cccccc.,;;;;;;.   llllll.",
            \ ".cccccc  ';;;;;;'  oooooo.",
            \ "'lllllc   .;;;;;;;.oooooo'",
            \ "'lllllc     ,::::::looooo'",
            \ "'llllll      .:::::lloddd'",
            \ ".looool       .;::coooodo.",
            \ "  .cool         'ccoooc.  ",
            \ "    .co          .:o:.    ",
            \ "      .           .'      ",
            \]

let g:startify_custom_header = map(g:startify_ascii, '"     ".v:val')

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ '^/tmp',
      \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_padding_left = 5
let g:startify_relative_path = 1
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_vcs_root = 1
" let g:startify_session_autoload = 1
let g:startify_update_oldfiles = 1
let g:startify_use_env = 1

hi! link StartifyHeader Title
hi! link StartifyFile Directory
hi! link StartifyPath LineNr
hi! link StartifySlash StartifyPath
hi! link StartifyBracket StartifyPath
hi! link StartifyNumber Title

autocmd User Startified setlocal cursorline

let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'i3': '~/.config/i3/config' },
            \ { 'nv': '~/.config/nvim/init.vim' },
            \ { 'zs': '~/.zshrc' },
            \ { 'al': '~/.config/alacritty/alacritty.yml' },
            \ { 'po': '~/.config/polybar/config' },
            \ { 'ra': '~/.config/ranger/rc.conf' },
            \ { 'tm': '~/.tmux.conf.local' },
            \ ]

let g:startify_session_sort = 1
