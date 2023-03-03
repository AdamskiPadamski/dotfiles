require('adamski.remappings')
require('adamski.options')
require('adamski.packer')

require('mason').setup()
require('mason-lspconfig').setup()
local lspconfig = require('lspconfig')
local cmp = require('cmp')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources(
  {
    { name = 'nvim_lsp' },
  },
  {
    { name = 'buffer' },
  },
  {
    { name = 'vsnip' }
  },
  {
    { name = 'nvim_lua' }
  })
})

local client_capabilities = vim.lsp.protocol.make_client_capabilities()
local updated_client_capabilities = cmp_nvim_lsp.default_capabilities(client_capabilities)

lspconfig.tsserver.setup({
  capabilities = updated_client_capabilities
})

lspconfig.ccls.setup({
  capabilities = updated_client_capabilities
})

lspconfig.rust_analyzer.setup({
  capabilities = updated_client_capabilities
})

lspconfig.hls.setup({
  capabilities = updated_client_capabilities
})

lspconfig.lua_ls.setup({
  capabilities = updated_client_capabilities
})
