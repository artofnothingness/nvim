require("toggleterm").setup {
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    winbar = {
        enabled = true,
        name_formatter = function(term) --  term: Terminal
        return term.name
        end
    },
}
function _G.set_terminal_keymaps()
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }
    map('t', '<esc>', [[<C-\><C-n>]], opts)
    map('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
    map('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
    map('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    map('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
-- vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
