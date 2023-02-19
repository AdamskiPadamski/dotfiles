local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
  return
end

nvim_tree.setup()

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<C-_>', ':NvimTreeFindFile<CR>', { noremap = true })
