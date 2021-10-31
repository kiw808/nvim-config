local g = vim.g

g.nvim_tree_gitignore = 1
g.nvim_tree_indent_markers = 1

require('nvim-tree').setup({
  open_on_setup = true,
  auto_close = true
})
