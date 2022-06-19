local home = os.getenv('HOME')

local db = require('dashboard')

db.custom_header = {
  "=================     ===============     ===============   ========  ========",
  "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
  "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
  "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
  "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
  "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
  "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
  "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
  "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
  "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
  "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
  "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
  "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
  "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
  "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
  "||.=='    _-'                                                     `' |  /==.||",
  "=='    _-'                        N E O V I M                         \\/   `==",
  "\\   _-'                                                                `-_   /",
  " `''                                                                      ``'  ",
  "                                                                               ",
}

db.custom_center = {
    {icon = '  ', desc = 'New File       ',
    action = 'DashboardNewFile', shortcut = '         '},
    {icon = '  ', desc = 'Recently Files ',
    action =  'Telescope oldfiles', shortcut = '  SPC f r'},
    {icon = '  ', desc = 'Find  File     ',
    action = 'Telescope find_files', shortcut = '  SPC f f'},
    {icon = '  ', desc = 'Find  Word     ',
    action = 'Telescope live_grep', shortcut = '  SPC f w'},
    {icon = '  ', desc = 'File Browser   ',
    action = 'RnvimrToggle', shortcut = '  m r    '},
    {icon = '  ', desc = 'Neovim Config  ', 
    action = ':e ~/.config/nvim/init.lua', shortcut = '  m o c  '},
    {icon = '  ', desc = 'Dotfiles       ', 
    action = ':e ~/.config/', shortcut = '  m o d  '},
}

db.custom_footer = {'github.com/artofnothingness'}
