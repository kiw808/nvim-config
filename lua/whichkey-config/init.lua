local wk = require("which-key")

local mappings = {
  x = {':bdelete<CR>', 'Close buffer'},
  f = {':Telescope find_files<CR>', 'Telescope find files'},
  r = {':Telescope live_grep<CR>', 'Telescope live grep'},
  R = {
    name = "Rescript",
    f = {":RescriptFormat<CR>", "Format current file"},
  },
}
local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
