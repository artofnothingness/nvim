" set leader key
  let g:mapleader = "\<Space>"
  let g:maplocalleader = 'm'

syntax enable "Allows for syntax highlighting
  
if (has("termguicolors"))
    set termguicolors
    " hi Normal guibg=NONE ctermbg=NONE
endif


if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif


set shortmess+=c " Don't pass messages to |ins-completion-menu|.
set backspace=indent,eol,start " Allow backspacing over everything in insert mode.
set smartcase
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
     
" Indentation
set autoindent " Copy indent from current line when starting a new line.
set nosmarttab " Tab key always inserts blanks according to 'tabstop'.
set shiftround " Round indent to multiple of 'shiftwidth'. Applies to > and < commands.
set expandtab                           " Converts tabs to spaces
set shiftwidth=2 " Affects what happens when you press `>>`, `<<` or `==`.
set smartindent " Automatically inserts one extra level of indentation in some cases.
set tabstop=2 " TAB character length.

set laststatus=0                        " Always display the status line
set number
set relativenumber                      " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory

set conceallevel=2
set cursorline                          " Enable highlighting of the current line

" Folding
set foldlevelstart=99 " Start editing with all folds open.
set foldmethod=indent " Use indent model for folding mechanism.

" Backup
set backupdir=~/.config/nvim/plug-data/cache/backup// " The directory for backup files.
set directory=~/.config/nvim/plug-data/cache/swap// " The directory for swap files.
set undodir=~/.config/nvim/plug-data/cache/undo// " The directory for undo files.
set undofile " Undo tree to be saved to a file when exiting a buffer.
set undolevels=100000 " Maximum undo limit.
set updatecount=100 " Typing this many characters will create the swap file.
set viewdir=~/.config/nvim/plug-data/cache/view// " Name of the directory where to store files for :mkview.
set viewoptions=cursor,folds,unix,slash " Options used by `mkview` and `loadview` command.

 " Buffers, Windows, Tabs
set autoread " Read the file again if have been changed outside of Vim.
set switchbuf=useopen " Jump to the first open window that contains the specified buffer.

" You can't stop me
cmap w!! w !sudo tee %
set sessionoptions+=globals
