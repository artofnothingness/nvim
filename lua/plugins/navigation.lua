
return {
    { 'numToStr/Navigator.nvim', 
        config = function()
            require('Navigator').setup({
                auto_save = 'current',
                disable_on_zoom = true
            })
        end,
        keys = {
            {'<C-h>', '<cmd>lua require("Navigator").left()<CR>'},
            {'<C-k>', '<cmd>lua require("Navigator").up()<CR>'},
            {'<C-l>', '<cmd>lua require("Navigator").right()<CR>'},
            {'<C-j>', '<cmd>lua require("Navigator").down()<CR>'},
        }

    },

    { 
        'rlane/pounce.nvim', 
        config = function () require('plugins/cfg/pounce') end,
        keys = {
            {'s', ':Pounce<CR>'},
            {'S', ':PounceRepeat<CR>'}
        }
    },

    {
        'ggandor/flit.nvim', 
        dependencies = {'ggandor/leap.nvim'},
        config = function()
            require('flit').setup{
                keys = { f = 'f', F = 'F', t = 't', T = 'T' },
                -- A string like "nv", "nvo", "o", etc.
                labeled_modes = "v",
                multiline = true,
                -- Like `leap`s similar argument (call-specific overrides).
                -- E.g.: opts = { equivalence_classes = {} }
                opts = {}
            }
        end
    }
}
