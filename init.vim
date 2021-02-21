source $HOME/.config/nvim/functions.vim

call SourceDirectory('$HOME/.config/nvim/plugins/')
call SourceDirectory('$HOME/.config/nvim/plugins/configs')

call SourceDirectory('$HOME/.config/nvim/settings')
call SourceDirectory('$HOME/.config/nvim/keys')

source $HOME/.config/nvim/color.vim
