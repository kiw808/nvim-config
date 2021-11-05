-- Essentials
require('plugins')
require('options')
require('keybindings')

-- Colorscheme
vim.cmd('colorscheme onedark')

-- Plugin configs
require('lualine-config')
require('bufferline-config')
require('autopairs-config')
require('indent-blankline-config')
require('nvimtree-config')
require('treesitter-config')
require('whichkey-config')
require('telescope-config')
require('lsp-config')
require('tabset-config')
require('lspsaga-config')
