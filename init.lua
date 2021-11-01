-- Essentials
require('plugins')
require('options')
require('keybindings')

-- Plugin configs
require('lualine-config')
require('bufferline-config')
require('autopairs-config')
require('nvimtree-config')
require('treesitter-config')
require('whichkey-config')
require('telescope-config')
require('lsp-config')
require('cmp-config')

-- Colorscheme
vim.cmd('colorscheme onedark')
