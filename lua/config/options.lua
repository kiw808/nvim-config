local opt = vim.opt
local wo = vim.wo

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
wo.wrap = false

-- Statusline
opt.laststatus = 3

-- Search
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Split
opt.splitright = true
opt.splitbelow = true

-- highlight the line number of the cursor
opt.cursorline = true
opt.cursorlineopt = "number,line"

opt.updatetime = 250
opt.timeoutlen = 300

opt.mouse = "n"
opt.clipboard = "unnamedplus"

opt.termguicolors = true

opt.signcolumn = "yes"
