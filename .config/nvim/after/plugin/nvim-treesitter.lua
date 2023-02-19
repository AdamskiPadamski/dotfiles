local ok, nvim_treesitter_configs = pcall(require, 'nvim-treesitter.configs')

if not ok then
  return
end

nvim_treesitter_configs.setup({
  highlight = {
    enable = true
  }
})

vim.api.nvim_set_option('foldmethod', 'expr')
vim.api.nvim_set_option('foldexpr', 'nvim_treesitter#foldexpr()')
vim.api.nvim_set_option('foldlevelstart', 99)
