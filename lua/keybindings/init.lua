-- Change leader key to "space"
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- Focus splits with "Ctrl" + "H, J, K, L"
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Press "jk" fast to go from INSERT to NORMAL mode
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Nvim tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Indent in VISUAL mode
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})
