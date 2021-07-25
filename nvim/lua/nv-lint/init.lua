require('lint').linters_by_ft = {
  cpp = {'clang-tidy'}
}
vim.cmd("au BufWritePost <buffer> lua require('lint').try_lint()")
