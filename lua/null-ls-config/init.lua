local null_ls = require('null-ls')
local sources = { 
      null_ls.builtins.formatting.prettier
    }

null_ls.config({
  sources = sources
})

require("lspconfig")["null-ls"].setup({})
