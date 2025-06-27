local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

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
