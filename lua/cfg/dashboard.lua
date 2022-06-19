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
    {icon = '  ', desc = 'Recently files ',
    action =  'Telescope oldfiles', shortcut = '  SPC f r'},
    {icon = '  ', desc = 'Find  File     ',
    action = 'Telescope find_files', shortcut = '  SPC f f'},
    {icon = '  ', desc = 'Find  word     ',
    action = 'Telescope live_grep', shortcut = '  SPC f w'},
    {icon = '  ', desc = 'File Browser   ',
    action = 'RnvimrToggle', shortcut = '  m r    '},
    {icon = '  ', desc = 'New File       ',
    action = 'DashboardNewFile', shortcut = '         '},
    {icon = '  ', desc = 'Open config    ', 
    action = ':e ~/.config/nvim/init.vim', shortcut = '         '},
}

db.custom_footer = 'github.com/artofnothingness'

-- vim.cmd("hi! dashboardHeader   guifg=#9788b9")
-- vim.cmd("hi! dashboardCenter   guifg=#51afef")
-- vim.cmd("hi! dashboardShortcut guifg=#9788b9")
-- vim.cmd("hi! dashboardFooter   guifg=#586268")
