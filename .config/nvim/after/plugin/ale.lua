vim.g.ale_disable_lsp = 1
vim.g.ale_linters = {
  cpp = { 'ccls' }
}
vim.g.ale_fixers = {
  javascript = { 'prettier', 'eslint' },
  javascriptreact = { 'prettier', 'eslint' }
}
