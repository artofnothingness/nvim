local harpoon = require("harpoon")
local extensions = require("harpoon.extensions");


-- REQUIRED
harpoon:setup()
harpoon:extend(extensions.builtins.navigate_with_number());
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "`", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-n>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-p>", function() harpoon:list():next() end)
