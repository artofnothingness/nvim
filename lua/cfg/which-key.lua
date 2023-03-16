local wk = require("which-key")

wk.setup {
    plugins = {
        marks = true,      -- shows a list of your marks on ' and `
        registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false,    -- adds help for operators like d, y, ...
            motions = false,      -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true,       -- default bindings on <c-w>
            nav = false,          -- misc bindings to work with windows
            z = false,            -- bindings for folds, spelling and others prefixed with z
            g = false             -- bindings for prefixed with g
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+"       -- symbol prepended to a group
    },
    window = {
        border = "single",       -- none, single, double, shadow
        position = "bottom",     -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 } -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = { min = 4, max = 25 },                                           -- min and max height of the columns
        width = { min = 20, max = 50 },                                           -- min and max width of the columns
        spacing = 3                                                               -- spacing between columns
    },
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true                                                              -- show help message on the command line when the popup is visible
}


wk.register({
        ['<Space>'] = { ':Dashboard<CR>', 'Dashboard' },
        g           = {
            name = '+Git',
            b = { ':Git blame<CR>', 'blame' },
            o = { ':Neogit<CR>', 'Neogit Open' },
            d = {
                name = '+Diffview',
                o = { ':DiffviewOpen<CR>', 'diff open' },
                d = { ':DiffviewOpen dev<CR>', 'diff dev' },
                f = { ':DiffviewToggleFiles<CR>', 'toggle files' },
                h = { ':DiffviewFileHistory<CR>', 'history' },
            },
        },
        f           = {
            name = '+Find',
            s = { ':Telescope lsp_document_symbols<CR>', 'file symbols' },
            S = { ':Telescope lsp_dynamic_workspace_symbols<CR>', 'ws symbols' },
            f = { '<cmd>Telescope find_files<CR>', 'files .' },
            b = { '<cmd>Telescope buffers<CR>', 'buffers' },
            r = { '<cmd>Telescope oldfiles<CR>', 'recent files' },
            w = { '<cmd>Telescope live_grep<cr>', 'word' },
        },
        d           = {
            name = '+Debug',
            t = { '<cmd>require("dapui").toggle()<CR>', 'toggle ui' },
            b = { '<cmd>DapToggleBreakpoint<CR>', 'toggle breakpoint' },
        },
        c           = {
            name = '+Code',
            g    = { ':Neogen<CR>', 'gen documentation' },
            r    = { '<cmd>lua vim.lsp.buf.rename()<CR>', 'rename' },
            d    = {
                name = '+Diagnostics',
                w = { ':Trouble workspace_diagnostics<CR>', 'workspace diagnostics' },
                f = { ':Trouble document_diagnostics<CR>', 'file diagnostics' },
                q = { ':Trouble quickfix<CR>', 'quick fixes' },
            },
        },
        w           = {
            name = '+Workspace',
            R = { ':Dirbuf<CR>', 'Dirbuf' },
            l = { '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', 'list workspaces' },
            r = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', 'remove workspaces' },
            a = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', 'add workspace' },
        },
    },
    {
        mode    = "n",
        prefix  = "<leader>",
        buffer  = nil,
        silent  = true,
        noremap = true,
        nowait  = false
    }
)

wk.register({
        t = {
            name = '+Tabularize',
            [','] = { ':Tabularize /,\\zs<CR>', 'comma' },
            ['='] = { ':Tabularize /=<CR>', 'equal' },
        },
    },
    {
        mode    = "v",
        prefix  = "<leader>",
        buffer  = nil,
        silent  = true,
        noremap = true,
        nowait  = false
    }
)

wk.register({
        n = { ':NnnPicker %:p:h<CR>', 'nnn' },
        m = { ':Mason<CR>', 'mason' },
        v = { ':Vista!!<CR>', 'vista' },
        s = { ":lua require('spectre').open()<CR>", 'spectre' },
        p = {
            name = '+Packer',
            u = { ':PackerUpdate<CR>', 'update' },
            s = { ':PackerSync<CR>', 'sync' },
            C = { ':PackerClean<CR>', 'clean' },
            c = { ':PackerCompile<CR>', 'compile' },
        },
        c = {
            name = '+Configs',
            c = { ':e ~/.config/nvim/init.lua<CR>', 'configs' },
            d = { ':e ~/.config<CR>', 'dotfiles' },
        },
    },
    {
        mode = "n",
        prefix = "<localleader>",
        buffer = nil,
        silent = true,
        noremap = true,
        nowait = false
    }
)
