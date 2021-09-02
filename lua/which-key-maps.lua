local wk = require("which-key")

wk.setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = false, -- misc bindings to work with windows
            z = false, -- bindings for folds, spelling and others prefixed with z
            g = false -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

local leader = {
    normal = {
        opts = {
            mode    = "n", -- NORMAL mode
            prefix  = "<leader>",
            buffer  = nil, -- Global mappings. Specify a buffer number for buffer local mappings
            silent  = true, -- use `silent` when creating keymaps
            noremap = true, -- use `noremap` when creating keymaps
            nowait  = false -- use `nowait` when creating keymaps
        },
        keys = {
            k  = { ':bdelet<CR>',                                               'kill'},
            p  = { ':lua require"telescope".extensions.project.project{}<CR>',  'projects'},
            z  = { ':MaximizerToggle<CR>',                                      'zoom'},
            s  = {
               name = '+SnipRun',
               r = {':lua require"sniprun".run()<CR>',                                   'run'},
               R = {':lua require"sniprun".reset()<CR>',                                 'reset'},
               c = {':lua require"sniprun.display".close()<CR>',                         'close'},
               C = {':lua require"sniprun".clear_repl()<CR>',                            'clean memory'},

           },
            f  = {
                name = '+Find',
                d = {':TroubleToggle<CR>', 'diagnostics'},
                s = {':Telescope lsp_dynamic_workspace_symbols<CR>', 'ws symbols'},
                f = {'<cmd>Telescope find_files<CR>',  'files .'},
                b = {'<cmd>Telescope buffers<CR>',  'buffers'},
                r = {'<cmd>Telescope oldfiles<CR>',  'recent files'},
                g = {":lua require('spectre').open()<CR>",  'open'},
                t = {":lua require('spectre').open_file_search()<CR>",  'this file'},
                w = {"viw:lua require('spectre').open_visual()<CR>",  'word'},
            }                                                                 ,
            c = {
                name = '+Code',
                w = {':Telescope lsp_workspace_symbols<CR>', 'workspace symbols'},
                r = {':Lspsaga rename<CR>', 'rename'},
                f = {':Lspsaga lsp_finder<CR>', 'references'},
                h = {':Lspsaga signature_help<CR>', 'signature'},
                p = {':Lspsaga preview_definition<CR>', 'preview'},
                g = {':DogeGenerate<CR>', 'gen documentation'},
                k = {':ClangdSwitchSourceHeader<CR>', 'switch source/header'},
                }
            }
    },
    visual = {
        opts = {
            mode    = "v", -- NORMAL mode
            prefix  = "<leader>",
            buffer  = nil, -- Global mappings. Specify a buffer number for buffer local mappings
            silent  = true, -- use `silent` when creating keymaps
            noremap = true, -- use `noremap` when creating keymaps
            nowait  = false -- use `nowait` when creating keymaps
        },
        keys = {
            b = {':VBox<CR>',                                'box'},
            s  = {
               name = '+SnipRun',
               r = {':lua require"sniprun".run("v")<CR>',                                'run'},
               R = {':lua require"sniprun".reset()<CR>',                                 'reset'},
               c = {':lua require"sniprun.display".close()<CR>',                         'close'},
               C = {':lua require"sniprun".clear_repl()<CR>',                            'clean memory'},
           },
            t  = {
            name = '+Tabularize',
            [','] = {':Tabularize /,\\zs<CR>',                                'comma'},
            ['='] = {':Tabularize /=<CR>',                                 'equal'},
        }

        }
    }
}

local localleader = {
    normal = {
        keys = {
            g  = { ':Neogit<CR>', 'neogit'},
            r  = { ':RnvimrToggle<CR>', 'ranger'},
            e  = { ':NvimTreeToggle<CR>', 'tree'},
            v  = { ':Vista!!<CR>', 'vista'},
            a  = { ':AerialToggle<CR>', 'Aeria'},
            p  = {
                name = '+Packer',
                u = {':PackerUpdate<CR>', 'update'},
                s = {':PackerSync<CR>', 'sync'},
                C = {':PackerClean<CR>', 'clean'},
                c = {':PackerCompile<CR>', 'compile'},
            },
            o  = {
                name = '+Open',
                l = {':FloatermNew lazygit<CR>', 'git'},
                d = {':FloatermNew lazydocker<CR>', 'docker'},
                p = {':FloatermNew python<CR>', 'python'},
                h = {':FloatermNew htop<CR>', 'htop'},
            }
        },
        opts = {
            mode = "n", -- NORMAL mode
            prefix = "<localleader>",
            buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
            silent = true, -- use `silent` when creating keymaps
            noremap = true, -- use `noremap` when creating keymaps
            nowait = false -- use `nowait` when creating keymaps
        }
    }
}



wk.register(leader['normal']['keys'], 
            leader['normal']['opts'])

wk.register(leader['visual']['keys'], 
            leader['visual']['opts'])

wk.register(localleader['normal']['keys'], 
            localleader['normal']['opts'])
