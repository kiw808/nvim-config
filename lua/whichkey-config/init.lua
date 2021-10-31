local wk = require("which-key")

local mappings = {
  x = {':bdelete<CR>', 'Close buffer'}
}
local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
