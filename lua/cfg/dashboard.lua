vim.g.dashboard_custom_header = {
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

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    b = {description = {'  Find File          '}, command = 'Telescope find_files'},
    c = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    d = {description = {'  New File           '}, command = 'enew'},
    e = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    f = {description = {'  Settings           '}, command = ':e ~/.config/nvim/init.vim'},
}

vim.g.dashboard_custom_footer = {'github.com/artofnothingness'}

vim.cmd("hi! dashboardHeader   guifg=#9788b9")
vim.cmd("hi! dashboardCenter   guifg=#51afef")
vim.cmd("hi! dashboardShortcut guifg=#9788b9")
vim.cmd("hi! dashboardFooter   guifg=#586268")
