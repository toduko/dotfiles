vim.g.CodeRunnerCommandMap = {
  python = 'python $fileName',
  c = 'gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
  cpp = 'g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
  haskell = 'runhaskell $fileName',
  javascript = 'node $fileName',
  prolog = 'swipl $fileName',
}
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
