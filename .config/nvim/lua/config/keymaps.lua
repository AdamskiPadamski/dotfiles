vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<C-_>", ":NvimTreeFindFile<CR>", { noremap = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.references()<CR>', { noremap = true })
vim.keymap.set('n', '<leader>r', ':lua vim.lsp.buf.rename()<CR>', { noremap = true })
vim.keymap.set('n', '<leader>h', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })

vim.keymap.set('n', '<leader><leader>', '<C-^>', { noremap = true })
vim.keymap.set('n', '<leader>nh', ':noh<CR>', { noremap = true })
