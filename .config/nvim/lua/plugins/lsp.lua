local lsp = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.lua_ls.setup({
  root_dir = function(fname)
    return vim.fn.getcwd()
  end,
  capabilities = capabilities
})
