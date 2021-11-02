-- Essentials
require('plugins')
require('options')
require('keybindings')

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

-- Colorscheme
vim.cmd('colorscheme onedark')
