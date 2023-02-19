local ok, builtin = pcall(require, 'telescope.builtin')

if not ok then
  return
end

vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true })
vim.keymap.set('n', '<leader>pd', ':lua require("telescope.builtin").lsp_definitions({ jump_type = "never" })<CR>', { noremap = true })
vim.keymap.set('n', '<leader>d', builtin.lsp_definitions, { noremap = true })
