local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('lua_ls', {
  root_dir = function(fname)
    return vim.fn.getcwd()
  end,
  capabilities = capabilities
})

vim.lsp.config('ccls', {
  capabilities = capabilities
})

vim.lsp.config('texlab', {
  capabilities = capabilities
})

vim.lsp.config('prolog_ls', {
  capabilities = capabilities
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('ccls')
vim.lsp.enable('texlab')
vim.lsp.enable('prolog_ls')
