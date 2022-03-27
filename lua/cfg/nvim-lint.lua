require('lint').linters_by_ft = {
  cpp = {'cppcheck', 'clangtidy',},
  cmake = {'cmakelint',}
}

vim.api.nvim_create_autocmd({"BufWritePost", "BufEnter"}, { callback = function() require('lint').try_lint() end})
