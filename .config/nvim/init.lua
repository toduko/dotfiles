vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd('source $HOME/.config/nvim/plugins/list.vim')
vim.cmd('source $HOME/.config/nvim/general/settings.vim')
vim.cmd('source $HOME/.config/nvim/general/mappings.vim')
require 'plugins/general'
require 'plugins/autocomplete'
require 'plugins/lsp'
