require('tabset').setup({
  defaults = {
    tabwidth = 2,
    expandtab = true
  },
  languages = {
    {
      filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "yaml", "php" },
      config = {
        tabwidth = 4
      }
    }
  }
})
