vim.g.CodeRunnerCommandMap = {
  python = 'python $fileName',
  c = 'gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
  cpp = 'g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
  haskell = 'ghci $fileName',
  javascript = 'node $fileName',
  prolog = 'swipl $fileName',
}
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_quickfix_open_on_warning = 0
vim.diagnostic.config({
  virtual_text = true
})
require('lualine').setup()
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
require('smear_cursor').enabled = true
require'nvim-treesitter.configs'.setup({highlight={enable=true},indent={enable=true}})
