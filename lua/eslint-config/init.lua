local null_ls = require("null-ls")
local eslint = require("eslint")

null_ls.setup()

eslint.setup({
  bin = 'eslint', -- or `eslint_d`
  code_actions = {
    enable = true,
    disable_rule_comment = {
      enable = true,
      location = "separate_line" -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
  },
})
