local ok, catppuccin = pcall(require, 'catppuccin')

if not ok then
  return
end

vim.cmd.colorscheme('catppuccin')
